import 'package:firebase_bmi_app/modules/home/hom_controller.dart';
import 'package:get/get.dart';

class HomeBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(HomeControlller());
  }
}
