import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/data/app_exception.dart';
import 'package:getx/res/assets/image_assets.dart';
import 'package:getx/res/colors/colors.dart';

import '../../components/internet_exceptions_widget.dart';
import '../../utils/utils.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return

      Scaffold(
      body: /*Image(image: AssetImage(ImageAssets.splashScreen))*/
      InternetExceptionsWidget(onPress: () {

      },),
      appBar: AppBar(
        title: Text('email_hint'.tr),
        backgroundColor: AppColor.primaryColor,
      ),
    );
  }
}
