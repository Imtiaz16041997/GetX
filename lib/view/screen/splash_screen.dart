import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/data/app_exception.dart';
import 'package:getx/res/assets/image_assets.dart';
import 'package:getx/res/colors/colors.dart';
import 'package:getx/view_models/services/splash_services.dart';

import '../../components/general_exception_widget.dart';
import '../../components/internet_exceptions_widget.dart';
import '../../components/round_button_component.dart';
import '../../utils/utils.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  SplashServices splashServices = SplashServices();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    splashServices.isLogin();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Text('welcome_back'.tr,textAlign: TextAlign.center,),
      ),
    );
  }
}

// class _SplashScreenState extends State<SplashScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return
//
//       Scaffold(
//       body: /*Image(image: AssetImage(ImageAssets.splashScreen))*/
//       /*GeneralExceptionWidget (onPress: () {
//
//     },),*/
//
//       Column(
//         children: [
//           SizedBox(height: 20,),
//           RoundButtonComponent(title: 'Login', onPress: () {  },width: 200,),
//         ],
//       ),
//       appBar: AppBar(
//         title: Text('email_hint'.tr),
//         backgroundColor: AppColor.primaryColor,
//       ),
//     );
//   }
// }
