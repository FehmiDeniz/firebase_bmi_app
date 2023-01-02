import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../roots/app_roots.dart';

class RegisterController extends GetxController {
  RxBool isCreate = false.obs;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  createUser() async {
    try {
      isCreate.value = true;
      final credential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(
              email: emailController.text, password: passwordController.text);
      Get.offAndToNamed(Routes.LOGIN);
      Get.snackbar("Registration Successful", "Registration Added");
    } on FirebaseAuthException catch (e) {
      Get.snackbar('Error!', e.message.toString());
      isCreate.value = false;
    }
  }
}
