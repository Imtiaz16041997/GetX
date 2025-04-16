class AppUrl {
  static const String baseUrl = 'https://ibank.citizensbankbd.com/CloudNetAPIExt';
  static const String loginEndPoint = '$baseUrl/api/Login/Login';

  static const String userListApi = 'https://webhook.site/0842056e-122b-44bf-bbad-d94cc6d6aadc';

  // static const String accountListApi = 'https://ibank.citizensbankbd.com/CloudNetAPIExt/api/BankAccount/getAccountListWithBalance?accountType=0';
  static String accountListApi({required int accountType}) =>
      'https://ibank.citizensbankbd.com/CloudNetAPIExt/api/BankAccount/getAccountListWithBalance?accountType=$accountType';

}