import 'package:getx/models/home/account_list/account_list_balance.dart';
import '../../../data/network/network_api_services.dart';
import '../../../res/app_url/app_url.dart';

class AccountListRepository{

  final _apiService = NetworkApiServices();

  Future<AccountListWithBalance> accountListApi({int accountType = 0}) async {
    final url = AppUrl.accountListApi(accountType: accountType);
    dynamic response = await _apiService.getAccountApi(url);
    return AccountListWithBalance.fromJson(response);
  }

}