import 'package:firebase_bmi_app/components/components.dart';
import 'package:firebase_bmi_app/modules/home/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class HomeScreen extends GetView<HomeControlller> {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff353640),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("BMI",
              style: Theme.of(context)
                  .textTheme
                  .headline3!
                  .copyWith(color: Colors.white, letterSpacing: 1.h)),
          SizedBox(
            height: 5.h,
          ),
          Container(
              margin: EdgeInsets.only(left: 8.w, right: 8.w, top: 3.h),
              child: uiBmiTextField(controller.heightController, "Height(cm)")),
          SizedBox(
            height: 3.h,
          ),
          Container(
              margin: EdgeInsets.only(left: 8.w, right: 8.w, top: 3.h),
              child:
                  uiBmiTextField(controller.weightController, "Weight (Kg)")),
          SizedBox(
            height: 5.h,
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  side: const BorderSide(color: Colors.white, width: 2),
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                  foregroundColor: Colors.white),
              onPressed: () async {
                await controller.dataAdd();
                controller.heightController.text = "";
                controller.weightController.text = "";
              },
              child: Text(
                "Calculate",
                style: Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .copyWith(color: Colors.white),
              ))
        ],
      ),
    );
  }
}
