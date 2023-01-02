import 'dart:math';

import 'package:get/get.dart';

class ResultController extends GetxController {
  double? bmi = 30;

  double? result(double weight, double height) {
    bmi = weight / (pow(2, height / 100));
    return bmi;
  }

  String getResult(bmi) {
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

  String getInfo(bmi) {
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
