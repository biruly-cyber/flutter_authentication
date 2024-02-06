
import 'dart:convert';

import 'package:authentication/config/config.dart';
import 'package:authentication/models/login_request_model.dart';
import 'package:authentication/models/login_response_model.dart';
import 'package:authentication/services/shared_service.dart';
import 'package:http/http.dart' as http;

class APIService {
  static var client =  http.Client();

   // login api request
  static Future<bool> login(LoginRequestModel model) async{
    Map<String, String> requestHeaders ={
      'Content-Type': 'application/json'
    };

    var url = Uri.http(Config.apiURL, Config.loginAPI);
    
    var response = await client.post(url, headers: requestHeaders, body: jsonEncode(model.toJson()));

    if(response.statusCode == 200){
      //shared
      await SharedService.setLoginDetails(loginResponse(response.body));
      return true;
    }else{
      return false;
    }
  }
}