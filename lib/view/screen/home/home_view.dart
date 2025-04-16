import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/data/response/status.dart';
import 'package:getx/res/routes/routes_name.dart';
import 'package:getx/view/screen/splash_screen.dart';
import 'package:getx/view_models/controller/home/home_view_model_controller.dart';
import 'package:getx/view_models/controller/user_preference/user_preference.dart';

import '../../../res/colors/colors.dart';
class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
 final homeController = Get.put(HomeViewModelController());
  UserPreferences userPreferences = UserPreferences();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    homeController.userListApi();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.redColor,
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Text('home'.tr),
        actions: [
          IconButton(onPressed: (){
            userPreferences.removeUser().then((value){
              Get.toNamed(RoutesName.loginView);
            });
          }, icon: Icon(Icons.logout))
        ],
      ),
      body: Obx((){
        switch(homeController.rxRequestStatus.value){
          case Status.LOADING:
            return Center(child: CircularProgressIndicator());
          case Status.ERROR: return Text('Something went wrong!');
          case Status.COMPLETED: return ListView.builder(
            itemCount: homeController.userList.value.data!.length,
              itemBuilder: (context,index){
            return Card(
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(homeController.userList.value.data![index].avatar.toString()),
                ),
                title: Text(homeController.userList.value.data![index].firstName.toString()),
                subtitle: Text(homeController.userList.value.data![index].email.toString()),
              ),
            );
          });


        }

        return SizedBox();
      }),
    );
  }
}
