import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
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
      var ref = firestore
          .collection('users')
          .doc(FirebaseAuth.instance.currentUser!.uid)
          .collection("data")
          .doc(DateTime.now().toString());

      await ref.set({
        'weight': weightController.text,
        'height': heightController.text
      }).then(
        (value) {
          Get.toNamed(Routes.RESULT);
          Get.snackbar("Successfully!", "Added");
        },
      );
    } else {
      Get.snackbar("Error!", "Check the Control!");
    }
  }
}
