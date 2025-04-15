import 'dart:async';

import 'package:get/get.dart';
import 'package:getx/res/routes/routes_name.dart';

import '../controller/user_preference/user_preference.dart';

// class SplashServices {
//   void isLogin(){
//       Timer(const Duration(seconds: 3),
//           () => Get.toNamed(RoutesName.loginView)
//       );
//
//   }
// }


//if login is already in
class SplashServices {
  final UserPreferences userPreferences = UserPreferences();

  void isLogin() {
    userPreferences.getUser().then((value) {
      final token = value?.result?.accessToken;
      print("token:  $token");
      if (token == null || token.isEmpty || token == 'null') {
        Timer(
          const Duration(seconds: 3),
              () => Get.toNamed(RoutesName.loginView),
        );
      } else {
        Timer(
          const Duration(seconds: 3),
              () => Get.toNamed(RoutesName.homeView),
        );
      }
    });
  }
}