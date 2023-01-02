import 'package:firebase_bmi_app/modules/result/result_controller.dart';
import 'package:get/get.dart';

class ResultBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(ResultController());
  }
}
