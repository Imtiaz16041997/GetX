import 'package:get/get.dart';
import 'package:getx/models/home/account_list/account_list_balance.dart';
import 'package:getx/repository/home_repository/account_list_repository/account_list_repository.dart';

import '../../../../data/response/status.dart';

class AccountListViewModelController extends GetxController {
  final _api = AccountListRepository();

  final rxRequestStatus = Status.LOADING.obs;
  final userList = AccountListWithBalance().obs;
  RxString error  = ''.obs;

  void setRxRequestStatus(Status _value) => rxRequestStatus.value = _value;
  void setUserList(AccountListWithBalance _value) => userList.value = _value;
  void setError(String _value) => error.value = _value;

  void accountListApi({int accountType = 0}) {
    _api.accountListApi(accountType: accountType).then((value) {
      setRxRequestStatus(Status.COMPLETED);
      setUserList(value);
    }).onError((error, stackTrace) {
      setRxRequestStatus(Status.ERROR);
      setError(error.toString());
    });
  }

  void refreshApi({int accountType = 0}) {
    setRxRequestStatus(Status.LOADING);
    _api.accountListApi(accountType: accountType).then((value) {
      setRxRequestStatus(Status.COMPLETED);
      setUserList(value);
    }).onError((error, stackTrace) {
      setRxRequestStatus(Status.ERROR);
      setError(error.toString());
      print(error);
    });
  }
}