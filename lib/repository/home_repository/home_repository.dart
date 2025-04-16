import 'package:getx/models/home/user_list_model.dart';

import '../../data/network/network_api_services.dart';
import '../../res/app_url/app_url.dart';

class HomeViewRepository{

  final _apiService = NetworkApiServices();

  Future<UserListModel> userListApi() async {
    dynamic response = await _apiService.getApi(AppUrl.userListApi);
    return UserListModel.fromJson(response);
  }





}