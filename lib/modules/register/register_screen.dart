import 'package:animate_do/animate_do.dart';
import 'package:firebase_bmi_app/modules/register/register_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../components/components.dart';
import '../../roots/app_roots.dart';
import '../login/login_screen.dart';

class RegisterScreen extends GetView<RegisterController> {
  const RegisterScreen({super.key});

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
            padding: EdgeInsets.only(left: 6.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Register",
                  style: Theme.of(context).textTheme.headline4!.copyWith(
                      color: const Color(0xff2F80ED),
                      fontWeight: FontWeight.bold),
                ),
                uiTextfield("Email", controller.emailController,
                    TextInputType.emailAddress, false),
                uiTextfield("Password", controller.passwordController,
                    TextInputType.visiblePassword, true),
                SizedBox(
                  height: 28.5.h,
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
                                "Already Member?  ",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 16.sp),
                              ),
                              InkWell(
                                onTap: () {
                                  Get.toNamed(Routes.LOGIN);
                                },
                                child: Text(
                                  "Login",
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline6!
                                      .copyWith(
                                          color: Colors.white, fontSize: 19.sp),
                                ),
                              ),
                            ],
                          ),
                          controller.isCreate.value == true
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
                                    controller.createUser();
                                  },
                                  child: Text(
                                    'Register',
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
          )),
    );
    ;
  }
}
