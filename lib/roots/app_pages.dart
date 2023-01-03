import 'package:firebase_bmi_app/modules/home/home_binding.dart';
import 'package:firebase_bmi_app/modules/home/home_screen.dart';
import 'package:firebase_bmi_app/modules/login/login_binding.dart';
import 'package:firebase_bmi_app/modules/login/login_screen.dart';
import 'package:firebase_bmi_app/modules/register/register_binding.dart';
import 'package:firebase_bmi_app/modules/register/register_screen.dart';
import 'package:firebase_bmi_app/modules/result/result_binding.dart';
import 'package:firebase_bmi_app/modules/result/result_screen.dart';
import 'package:get/get.dart';

import 'app_roots.dart';

abstract class AppPages {
  static final routes = [
    GetPage(
      name: Routes.HOME,
      page: () => const HomeScreen(),
      binding: HomeBindings(),
    ),
    GetPage(
        name: Routes.LOGIN,
        page: () => LoginScreen(),
        binding: LoginBinding(),
        transitionDuration: const Duration(milliseconds: 2500),
        transition: Transition.circularReveal),
    GetPage(
      name: Routes.RESULT,
      page: () => const ResultScreen(),
      binding: ResultBinding(),
    ),
    GetPage(
        name: Routes.REGISTER,
        page: () => RegisterScreen(),
        binding: RegisterBinding(),
        transitionDuration: const Duration(milliseconds: 2500),
        transition: Transition.circularReveal)
  ];
}
