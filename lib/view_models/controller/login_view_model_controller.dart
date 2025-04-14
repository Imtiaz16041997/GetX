import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:getx/repository/login_repository/login_repository.dart';

import '../../utils/utils.dart';

class LoginViewModelController extends GetxController{
  final _apiRepository = LoginRepository();

  final emailController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;


  final emailFocusNode = FocusNode().obs;
  final passwordFocusNode = FocusNode().obs;

  RxBool loading = false.obs;
  void loginApi() async {

    loading.value = true;

    Map<String, String> data = {
      'UserName': emailController.value.text,
      'Password': passwordController.value.text,
      'ImeiOrIP': 'MOB-11111',
      'DeviceType': '',
      'DeviceToken': '',
      'OTP': '',
      'TPIN': '',
    };

    try {
      final result = await _apiRepository.loginApi(data);
      loading.value = false;
      if (result['Status'] == 'OK') {
        Utils.snackBar('Success', result['Message'].toString());
        print("Login success: ${result['Message']}");
        // You can also access result['Result']['access_token'] here
      } else {
        Utils.snackBar('Error', result['Message'].toString());
      }

      // Handle result here
    } catch (error) {
      loading.value = false;
      print(error);
      Utils.snackBar('Error', error.toString());
    }
  }




}