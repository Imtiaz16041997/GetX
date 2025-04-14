import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/components/round_button_component.dart';
import 'package:getx/res/colors/colors.dart';
import 'package:getx/view_models/controller/login_view_model_controller.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {

  final loginController = Get.put(LoginViewModelController());




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.redColor,
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Text('Login'.tr),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextFormField(
              controller: loginController.emailController.value,
              focusNode: loginController.emailFocusNode.value,
              decoration: InputDecoration(
                hintText: 'email_hint'.tr,
                border: OutlineInputBorder()
              ),
            ),

            SizedBox(height: 40,),
            RoundButtonComponent(
              width: 200,title: 'login'.tr,onPress: (){

            },)

          ],
        ),
      ),
      
    );
  }
}
