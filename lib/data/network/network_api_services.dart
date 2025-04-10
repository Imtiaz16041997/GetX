


import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:getx/data/app_exception.dart';
import 'package:getx/data/network/base_api_services.dart';
import 'package:http/http.dart' as http;

class NetworkApiServices extends BaseApiServices {
  @override
  Future getApi(String url) async {
    if(kDebugMode ){
      print(url);
    }
    dynamic responseJson;

    try
    {

      final response = await http.get(Uri.parse(url)).timeout(const Duration(seconds: 10));
      responseJson = returnResponse(response);
    }on SocketException{
      throw InternetException('');
    }on RequestTimeOutException {
      throw RequestTimeOutException('');
    }

    return responseJson;
  }

  dynamic returnResponse(http.Response response){
      switch(response.statusCode){
        case 200:
          dynamic responseJson = jsonDecode(response.body);
          return responseJson;

        case 400:
          throw InvalidUrlException;
          default:
            throw FetchDataException('Error Occured while communicating with server '+response.statusCode.toString());
      }
  }

  @override
  Future postApi(var data, String url) async {
    if(kDebugMode ){
      print(url);
      print(data);
    }
    dynamic responseJson;

    try
    {

      final response = await http.post(Uri.parse(url),
      //if request body is in RawForm then it will encode otherwise not
        body: jsonDecode(data)


      ).timeout(const Duration(seconds: 10));
      responseJson = returnResponse(response);
    }on SocketException{
      throw InternetException('');
    }on RequestTimeOutException {
      throw RequestTimeOutException('');
    }

    return responseJson;
  }

}