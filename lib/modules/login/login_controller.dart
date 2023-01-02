import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../roots/app_roots.dart';

class LoginController extends GetxController {
  RxBool isLogin = false.obs;

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  loginUser() async {
    try {
      isLogin.value = true;
      final userCredential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(
              email: emailController.text, password: passwordController.text);

      Get.snackbar("Login Successfully", "Confirmed");
      Get.offAndToNamed(Routes.HOME);
    } on FirebaseAuthException catch (e) {
      Get.snackbar('Error!', e.message.toString());
      isLogin.value = false;
    }
  }
}
