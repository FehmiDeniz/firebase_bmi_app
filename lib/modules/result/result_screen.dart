import 'package:firebase_bmi_app/modules/login/login_screen.dart';
import 'package:firebase_bmi_app/modules/result/result_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../roots/app_roots.dart';

class ResultScreen extends GetView<ResultController> {
  const ResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "Your BMI SCORE",
              style: Theme.of(context).textTheme.headline4,
            ),
            Text(
              controller.bmi.toString(),
              style: Theme.of(context)
                  .textTheme
                  .headline3!
                  .copyWith(color: Colors.red),
            ),
            Text(controller.getResult(controller.bmi),
                style: Theme.of(context).textTheme.headline5!),
            Padding(
              padding: const EdgeInsets.all(13.0),
              child: Text(controller.getInfo(controller.bmi),
                  style: Theme.of(context).textTheme.headline6!),
            ),
            TextButton(
              onPressed: () {
                Get.toNamed(Routes.HOME);
              },
              child: const Text(
                "Refresh!",
                style: TextStyle(color: Colors.blueGrey),
              ),
            ),
            TextButton(
              onPressed: () {
                // controller.getLastData();
              },
              child: const Text(
                "Get Last!",
                style: TextStyle(color: Colors.blueGrey),
              ),
            )
          ],
        ),
      ),
    );
  }
}
