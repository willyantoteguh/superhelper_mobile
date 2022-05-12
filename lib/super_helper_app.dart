import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:kehadiranmu/app/modules/entry/views/entry_view.dart';
import 'package:kehadiranmu/app/modules/home/views/home_view.dart';
import 'package:splash_screen_view/SplashScreenView.dart';

import 'app/routes/app_pages.dart';

class SuperHelperApp extends StatelessWidget {
  const SuperHelperApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Application",
      debugShowCheckedModeBanner: false,
      // initialRoute: Entry,
      getPages: AppPages.routes,
      home: SplashScreenView(
          duration: 3000,
          imageSize: 130,
          imageSrc: "assets/icons/shlogo.png",
          backgroundColor: Colors.white,
          navigateRoute: EntryView(),
          ),
    );
  }
}
