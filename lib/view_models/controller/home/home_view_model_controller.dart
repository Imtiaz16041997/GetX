import 'package:get/get.dart';
import 'package:getx/models/home/user_list_model.dart';
import 'package:getx/repository/home_repository/home_repository.dart';

import '../../../data/response/status.dart';

class HomeViewModelController extends GetxController {

  final _api = HomeViewRepository();

  final rxRequestStatus = Status.LOADING.obs;
  final userList = UserListModel().obs;
  RxString error  = ''.obs;

    void setRxRequestStatus(Status _value) => rxRequestStatus.value = _value;
    void setUserList(UserListModel _value) => userList.value = _value;
    void setError(String _value) => error.value = _value;

  void userListApi(){
    //setRxRequestStatus(Status.LOADING);
    _api.userListApi().then((value){
      setRxRequestStatus(Status.COMPLETED);
      setUserList(value);
      print(value);

    }).onError((error,stackTrace){
      setRxRequestStatus(Status.ERROR);
      setError(error.toString());
      print(error);
    });
  }


  void refreshApi(){
    setRxRequestStatus(Status.LOADING);
    _api.userListApi().then((value){
      setRxRequestStatus(Status.COMPLETED);
      setUserList(value);
      print(value);

    }).onError((error,stackTrace){
      setRxRequestStatus(Status.ERROR);
      setError(error.toString());
      print(error);
    });
  }


}