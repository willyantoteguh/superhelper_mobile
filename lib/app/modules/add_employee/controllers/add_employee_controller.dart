import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AddEmployeeController extends GetxController {
  //TODO: Implement AddEmployeeController
  RxBool isLoading = false.obs;
  TextEditingController nipController = TextEditingController();
  TextEditingController namaController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  
  FirebaseAuth auth = FirebaseAuth.instance;
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  void addEmployee() async {
    if(nipController.text.isNotEmpty && namaController.text.isNotEmpty && emailController.text.isNotEmpty) {
        try {
          UserCredential credential = await auth.createUserWithEmailAndPassword(
            email: emailController.text,
            password: "password-e",
          );

          if (credential.user != null) {
            String uid = credential.user!.uid;

            firestore.collection('employee').doc(uid).set({
              "nip": nipController.text,
              "name": namaController.text,
              "email": emailController.text,
              "uid": uid,
              "createdAt": DateTime.now().toIso8601String()
            });

            await credential.user!.sendEmailVerification();
          }

          debugPrint(credential.toString());
        } on FirebaseAuthException catch (e) {
          if (e.code == 'weak-password') {
            debugPrint('The password provided is too weak.');
            Get.snackbar('Error', 'The password provided is too weak.');
          } else if (e.code == 'email-already-in-use') {
            debugPrint('The account already exists for that email.');
            Get.snackbar('Error', 'The account already exists for that email.');
          }
        } catch (e) {
          Get.snackbar('Failed', "Can't add employees");
          debugPrint("Can't add employees");
        }
    } else {
      Get.snackbar('Error', 'All field must be Completed');
    }
    
    //debugPrint('test');
  }

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
