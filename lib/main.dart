import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/getx_localization/language.dart';
import 'package:getx/res/routes/routes.dart';
import 'package:getx/view/screen/splash_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'GetX',
      translations: Languages(),
      locale: Locale('en' , 'US'),
      fallbackLocale: Locale('en' , 'US'),
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
      getPages:
        AppRoutes.appRoutes()
      ,
    );
  }
}
