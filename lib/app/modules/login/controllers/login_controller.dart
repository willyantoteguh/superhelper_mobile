import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kehadiranmu/app/core/utils/pallete.dart';

import '../../../routes/app_pages.dart';

class LoginController extends GetxController {
  RxBool isLoading = false.obs;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  FirebaseAuth auth = FirebaseAuth.instance;

  void login() async {
    isLoading.toggle();
    if (emailController.text.isNotEmpty && passwordController.text.isNotEmpty) {
      try {
        final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: emailController.text,
          password: passwordController.text,);

          debugPrint(credential.user.toString());

          if(credential.user != null) {
            Get.offAllNamed(Routes.HOME);
            // if(credential.user!.emailVerified == true) {
            // } 
          //* Fitur verifikasi email jika diperlukan nantinya  
          //   else {
          //     Get.defaultDialog(
          //       title: "Not verified",
          //       middleText: "You have not verified this account.\nVerify in your email.",
          //       actions: [
          //         OutlinedButton(child: Text('Cancel'), onPressed: () => Get.back(), 
          //           ),
          //         ElevatedButton(child: Text('KIRIM ULANG'), onPressed: () async {
          //           try {
          //             await credential.user!.sendEmailVerification();
          //             Get.back();
          //             Get.snackbar('Success', 'We have successfully sent verification to your account');
          //           } catch (e) {
          //             Get.snackbar('Error', "Can't send verification email,\nPlease contact admin");
          //           }
          //         }, )  
          //       ]
          //     );
          //   }
          // }
          }
      } on FirebaseAuthException catch (e) {
        if (e.code == 'user-not-found') {
          Get.defaultDialog(title: "Failed", content: Text("No user found for that email.", style: regularText.copyWith(fontSize: 12),));
        } else if (e.code == 'wrong-password') {
          Get.defaultDialog(title: "Failed", content: Text("Wrong password provided for that user.", style: regularText.copyWith(fontSize: 12), ));
        }
      } catch (e) {
          Get.defaultDialog(title: "Failed", content: Text("Can't login.", style: regularText,));
      }
    } else {
      Get.defaultDialog(title: "Failed", content: Text("Email and Password must be filled.", style: regularText,));
    }
    isLoading.toggle();
  }

}
