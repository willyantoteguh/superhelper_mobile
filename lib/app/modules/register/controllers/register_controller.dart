import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_storage/get_storage.dart';

class RegisterController extends GetxController {
  var box = GetStorage();
  RxBool isLoading = false.obs;

  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  FirebaseAuth auth = FirebaseAuth.instance;
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  void submitUser() async {
    if (firstNameController.text.isNotEmpty &&
        emailController.text.isNotEmpty &&
        passwordController.text.isNotEmpty) {
      try {
        UserCredential credential = await auth.createUserWithEmailAndPassword(
          email: emailController.text,
          password: passwordController.text,
        );

        if (credential.user != null) {
          String uid = credential.user!.uid;
          box.write("email", credential.user!.email);

          firestore.collection('employee').doc(uid).set({
            "firstName": firstNameController.text,
            "lastName": lastNameController.text,
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
}
