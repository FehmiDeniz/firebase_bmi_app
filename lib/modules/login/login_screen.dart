import 'package:firebase_bmi_app/modules/login/login_controller.dart';
import 'package:firebase_bmi_app/modules/register/register_screen.dart';
import 'package:firebase_bmi_app/roots/app_roots.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../components/components.dart';

class LoginScreen extends GetView<LoginController> {
  LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            color: Colors.white,
            image: DecorationImage(
                image: AssetImage("assets/im_background.png"),
                fit: BoxFit.cover)),
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: Colors.transparent,
            body: Padding(
              padding: EdgeInsets.only(top: 8.h, left: 6.w),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "BMI LOGIN",
                    style: Theme.of(context).textTheme.headline4!.copyWith(
                        color: const Color(0xff2F80ED),
                        fontWeight: FontWeight.bold),
                  ),
                  uiTextfield("Email", controller.emailController,
                      TextInputType.emailAddress, false),
                  uiTextfield("Password", controller.passwordController,
                      TextInputType.visiblePassword, true),
                  SizedBox(
                    height: 25.h,
                  ),
                  Padding(
                      padding: EdgeInsets.only(right: 8.w, bottom: 1.3.h),
                      child: Obx(
                        () => Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Text(
                                  "New Here?  ",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 16.sp),
                                ),
                                InkWell(
                                  onTap: () {
                                    // Get.to(RegisterScreen(),
                                    //     duration: Duration(milliseconds: 2500),
                                    //     transition: Transition.circularReveal);
                                    Get.toNamed(Routes.REGISTER);
                                  },
                                  child: Text(
                                    "Register",
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline6!
                                        .copyWith(
                                            color: Colors.white,
                                            fontSize: 19.sp),
                                  ),
                                ),
                              ],
                            ),
                            controller.isLogin.value == true
                                ? const CircularProgressIndicator(
                                    color: Colors.white,
                                  )
                                : ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        side: const BorderSide(
                                            color: Colors.white, width: 2),
                                        backgroundColor: Colors.transparent,
                                        elevation: 0,
                                        foregroundColor: Colors.white),
                                    onPressed: () {
                                      // Get.toNamed(Routes.HOME);
                                      controller.loginUser();
                                    },
                                    child: Text(
                                      'Login',
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline6!
                                          .copyWith(color: Colors.white),
                                    ),
                                  )
                          ],
                        ),
                      ))
                ],
              ),
            )));
  }
}
