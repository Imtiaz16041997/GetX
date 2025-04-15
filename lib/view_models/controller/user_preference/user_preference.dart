import 'dart:convert';


import 'package:getx/models/login/user_response.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserPreferences  {


  Future<bool> saveUser(UserResponse userResponse) async {

    SharedPreferences sp = await SharedPreferences.getInstance();
    String userJson = jsonEncode(userResponse.toJson());
    await sp.setString('user', userJson);
    return true;

  }


  Future<UserResponse?> getUser() async {

    SharedPreferences sp = await SharedPreferences.getInstance();
    String? userJson = sp.getString('user');
    if (userJson != null) {
      Map<String, dynamic> userMap = jsonDecode(userJson);
      return UserResponse.fromJson(userMap);
    } else {
      return null;
    }

  }

  Future<String?> getToken() async {

    final user = await getUser();
    return user?.result?.accessToken;

  }


  Future<bool> removeUser() async {

    SharedPreferences sp = await SharedPreferences.getInstance();
    sp.clear();
    return true;

  }



}