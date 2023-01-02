import 'package:firebase_bmi_app/firebase_options.dart';
import 'package:firebase_bmi_app/roots/app_pages.dart';
import 'package:firebase_bmi_app/roots/app_roots.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'DI.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DependencyInjection.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
        builder: (context, orientation, screenType) => GetMaterialApp(
              debugShowCheckedModeBanner: false,
              initialRoute: Routes.LOGIN,
              getPages: AppPages.routes,
            ));
  }
}
