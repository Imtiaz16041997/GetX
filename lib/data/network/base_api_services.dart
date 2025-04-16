abstract class BaseApiServices {
  Future<dynamic> getApi(String url);
  Future<dynamic> getAccountApi(String url);
  Future<dynamic> postApi(dynamic data, String url);
}