import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_bmi_app/modules/home/home_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ResultController extends GetxController {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  double? bmi = 30;
  HomeControlller homeControlller = HomeControlller();
  @override
  void onInit() async {
    var fireData = await firestore
        .collection('users')
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .collection("data")
        .get();

    var x = fireData.docs.last["weight"];
    var y = fireData.docs.last["height"];
    print(x + " " + y);

    // bmi = (x / (pow(2, y / 100)));
    // print(bmi);
    // print(bmi.runtimeType);
    // print((x + y));
    // // bmi = double.tryParse(x + y);
    // print(x + y);
    super.onInit();
  }

  // getLastData() async {
  //   // print(fireData.docs[4].data()["weight"]);
  // }

  // double? result(double weight, double height) {
  //   bmi = weight / (pow(2, height / 100));
  //   return bmi;
  // }

  getResult(bmi) async {
    if (bmi! < 18.50) {
      return ("AŞIRI ZAYIF");
    } else if (bmi! >= 18.50 && bmi! <= 24.90) {
      return ("NORMAL");
    } else if (bmi! > 24.90 && bmi! <= 29.50) {
      return ("ŞİŞMAN");
    } else if (bmi! > 29.50 && bmi! <= 39.90) {
      return ("OBEZİTE");
    } else {
      return ("YÜKSEK OBEZİTE");
    }
  }

  getInfo(bmi) async {
    if (bmi! < 18.50) {
      return ("Aşırı Zayıfsınız Yemek Yemelisin");
    } else if (bmi! >= 18.50 && bmi! <= 24.90) {
      return ("Kilonuz ideal");
    } else if (bmi! > 24.90 && bmi! <= 29.50) {
      return ("Hafif Kilo verebilirsiniz");
    } else if (bmi! > 29.50 && bmi! <= 39.90) {
      return ("Çok fazla Kilon var. Spora Gidebilirsin");
    } else {
      return ("Aşırı Kilon var,hastalık yapabilir. Acil bir diyetisyenle görüşmelisin");
    }
  }
}
