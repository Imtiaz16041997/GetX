import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:getx/repository/login_repository/login_repository.dart';
import 'package:getx/res/routes/routes_name.dart';
import 'package:getx/view_models/controller/user_preference/user_preference.dart';

import '../../../models/login/login_request_model.dart';
import '../../../models/login/user_response.dart';
import '../../../utils/utils.dart';

class LoginViewModelController extends GetxController{
  final _apiRepository = LoginRepository();
  UserPreferences userPreferences = UserPreferences();

  final emailController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;


  final emailFocusNode = FocusNode().obs;
  final passwordFocusNode = FocusNode().obs;

  RxBool loading = false.obs;
  void loginApi() async {

    loading.value = true;

    //i want to make it username to tpin as it in the data class
    final data = LoginRequestModel(
      userName: emailController.value.text,
      password: passwordController.value.text,
    );

    try {
      final result = await _apiRepository.loginApi(data);
      loading.value = false;
      if (result['Status'] == 'OK') {
        Utils.snackBar('Success', result['Message'].toString());
        print("Login success: ${result['Message']}");
        userPreferences.saveUser(UserResponse.fromJson(result));
        Get.delete<LoginViewModelController>();
        Get.toNamed(RoutesName.navView)!.then((value){

        });
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