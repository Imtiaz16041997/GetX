import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/view/screen/splash_screen.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'GetX App',
      theme: ThemeData(
        primarySwatch: Colors.cyan
      ),
      home: SplashScreen(),
    );
  }
}
