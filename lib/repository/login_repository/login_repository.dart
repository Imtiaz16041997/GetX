

import 'package:getx/data/network/network_api_services.dart';
import 'package:getx/res/app_url/app_url.dart';

class LoginRepository {
  final _apiService = NetworkApiServices();

  Future<dynamic> loginApi(var data) async {
    dynamic response = await _apiService.postApi(data, AppUrl.loginEndPoint);

    return response;
  }
}