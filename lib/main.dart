import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/view/screen/splash_screen.dart';

import 'view/screen/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'GetX',
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
