import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../utils/utils.dart';
import '../../../../view_models/controller/login/login_view_model_controller.dart';

class InputPasswordWidget extends StatelessWidget {
   InputPasswordWidget({super.key});
  final loginViewModelController = Get.put(LoginViewModelController());
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: loginViewModelController.passwordController.value,
      focusNode: loginViewModelController.passwordFocusNode.value,
      obscureText: true,
      validator: (value){
        if(value!.isEmpty){
          Utils.snackBar('Password', 'Enter Password');
        }
      },
      onFieldSubmitted: (value){
      },
      decoration: InputDecoration(
          hintText: 'pass_hint'.tr,
          border: OutlineInputBorder()
      ),
    );
  }
}
