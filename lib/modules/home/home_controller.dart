import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../../roots/app_roots.dart';

class HomeControlller extends GetxController {
  TextEditingController heightController = TextEditingController();
  TextEditingController weightController = TextEditingController();

  FirebaseFirestore firestore = FirebaseFirestore.instance;

  Future dataAdd() async {
    if (weightController.text != "" && heightController.text != "") {
      firestore.collection('users').add(
          {'weight': weightController.text, 'height': heightController.text});
      Get.toNamed(Routes.RESULT);
      Get.snackbar("Successfully!", "Added");
    } else {
      Get.snackbar("Error!", "Check the Control!");
    }
  }
}
