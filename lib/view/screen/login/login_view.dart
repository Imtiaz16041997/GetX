import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/components/round_button_component.dart';
import 'package:getx/res/colors/colors.dart';
import 'package:getx/view_models/controller/login/login_view_model_controller.dart';

import '../../../utils/utils.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {

  final loginViewModelController = Get.put(LoginViewModelController());
  final _formKey =  GlobalKey<FormState> ();



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
            Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
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
                  ),
                  SizedBox(height: 20,),
                  TextFormField(
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
                  ),
                ],
              ),
            ),
            SizedBox(height: 40,),
            Obx(()=> RoundButtonComponent(
              width: 200,
              loading: loginViewModelController.loading.value,
              title: 'login'.tr,onPress: (){
              if(_formKey.currentState!.validate()){
                loginViewModelController.loginApi();
              }
            },))

          ],
        ),
      ),
      
    );
  }
}
