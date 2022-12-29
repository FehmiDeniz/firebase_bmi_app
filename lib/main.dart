import 'package:firebase_bmi_app/roots/app_pages.dart';
import 'package:firebase_bmi_app/roots/app_roots.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
        builder: (context, orientation, screenType) => GetMaterialApp(
              debugShowCheckedModeBanner: false,
              initialRoute: Routes.REGISTER,
              getPages: AppPages.routes,
            ));
  }
}
