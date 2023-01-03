import 'package:firebase_bmi_app/shared/service/firebase_service.dart';
import 'package:firebase_bmi_app/shared/service/firestore_service.dart';
import 'package:get/get.dart';

class DependencyInjection {
  static init() async {
    await Get.putAsync(() => FirebaseService().init());
    await Get.putAsync(() => FireStoreService().init());
  }
}
