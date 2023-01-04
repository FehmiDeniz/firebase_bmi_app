import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_bmi_app/modules/home/home_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ResultController extends GetxController {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  RxDouble bmi = 0.0.obs;
  RxString resultData = "".obs;
  RxString infoData = "".obs;
  HomeControlller homeControlller = HomeControlller();
  @override
  void onInit() async {
    var fireData = await firestore
        .collection('users')
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .collection("data")
        .get();

    var height = double.parse(fireData.docs.last["height"]) / 100;
    var weight = double.parse(fireData.docs.last["weight"]);

    bmi.value = weight / (height * height);
    print(bmi.value);
    resultData.value = getResult();
    infoData.value = getInfo();

    super.onInit();
  }

  getResult() {
    if (bmi.value < 18.50) {
      return ("AŞIRI ZAYIF");
    } else if (bmi.value! >= 18.50 && bmi.value! <= 24.90) {
      return ("NORMAL");
    } else if (bmi.value! > 24.90 && bmi! <= 29.50) {
      return ("ŞİŞMAN");
    } else if (bmi.value! > 29.50 && bmi! <= 39.90) {
      return ("OBEZİTE");
    } else {
      return ("YÜKSEK OBEZİTE");
    }
  }

  getInfo() {
    if (bmi.value < 18.50) {
      return ("Aşırı Zayıfsınız Yemek Yemelisin");
    } else if (bmi.value! >= 18.50 && bmi! <= 24.90) {
      return ("Kilonuz ideal");
    } else if (bmi.value! > 24.90 && bmi! <= 29.50) {
      return ("Hafif Kilo verebilirsiniz");
    } else if (bmi.value! > 29.50 && bmi! <= 39.90) {
      return ("Çok fazla Kilon var. Spora Gidebilirsin");
    } else {
      return ("Aşırı Kilon var,hastalık yapabilir. Acil bir diyetisyenle görüşmelisin");
    }
  }
}
