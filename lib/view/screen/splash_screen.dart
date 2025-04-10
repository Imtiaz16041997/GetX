import 'package:flutter/material.dart';
import 'package:getx/data/app_exception.dart';

import '../../utils/utils.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){
        // throw InternetException('message');
        Utils.toastMessageCenter('Imtiaz');
        Utils.toastMessage('Imtiaz');
      }),
    );
  }
}
