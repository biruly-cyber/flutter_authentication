
import 'dart:convert';

import 'package:authentication/config/config.dart';
import 'package:authentication/models/login_request_model.dart';
import 'package:authentication/models/login_response_model.dart';
import 'package:authentication/services/shared_service.dart';
import 'package:http/http.dart' as http;

class UserAPIService {
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

  //get profile
  static Future<String> getProfile() async {
    var loginDetails = await SharedService.loginDetails();

    var token = loginDetails!.token;

    Map<String, String> requestHeaders = {
      'Content-Type': 'application/json',
      'Cookie': 'token=$token',
    };

    var url = Uri.http(Config.apiURL, Config.profile);

    try {
      var response = await http.get(url, headers: requestHeaders);

      if (response.statusCode == 200) {
        return response.body;
      } else {
        // Handle non-200 status codes
        return ""; // You might want to throw an exception or handle the error in some way
      }
    } catch (e) {
      // Handle network or unexpected errors
      return ""; // You might want to throw an exception or handle the error in some way
    }
  }
}