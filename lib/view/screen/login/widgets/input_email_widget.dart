import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../utils/utils.dart';
import '../../../../view_models/controller/login/login_view_model_controller.dart';

class InputEmailWidget extends StatelessWidget {
   InputEmailWidget({super.key});
  final loginViewModelController = Get.put(LoginViewModelController());
  @override
  Widget build(BuildContext context) {
    return  TextFormField(
      controller: loginViewModelController.emailController.value,
      focusNode: loginViewModelController.emailFocusNode.value,
      validator: (value){
        if(value!.isEmpty){
          Utils.snackBar('Email', 'Enter Email');
        }
      },
      onFieldSubmitted: (value){
        Utils.filedFocusChange(context, loginViewModelController.emailFocusNode.value, loginViewModelController.passwordFocusNode.value);
      },
      decoration: InputDecoration(
          hintText: 'email_hint'.tr,
          border: OutlineInputBorder()
      ),
    );
  }
}
