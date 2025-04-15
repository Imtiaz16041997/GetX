import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/res/routes/routes_name.dart';
import 'package:getx/view/screen/splash_screen.dart';
import 'package:getx/view_models/controller/user_preference/user_preference.dart';
class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  UserPreferences userPreferences = UserPreferences();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: (){
            userPreferences.removeUser().then((value){
              Get.toNamed(RoutesName.loginView);
            });
          }, icon: Icon(Icons.logout))
        ],
      ),
    );
  }
}
