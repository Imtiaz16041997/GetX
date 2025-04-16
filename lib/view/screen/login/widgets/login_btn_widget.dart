import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import '../../../../components/round_button_component.dart';
import '../../../../view_models/controller/login/login_view_model_controller.dart';

class LoginBtnWidget extends StatelessWidget {
  final formKey;
   LoginBtnWidget({super.key, required this.formKey});
   final loginViewModelController = Get.put(LoginViewModelController());

  @override
  Widget build(BuildContext context) {
    return Obx(()=> RoundButtonComponent(
      width: 200,
      loading: loginViewModelController.loading.value,
      title: 'login'.tr,onPress: (){
      if(formKey.currentState!.validate()){
        loginViewModelController.loginApi();
      }
    },));
  }
}
