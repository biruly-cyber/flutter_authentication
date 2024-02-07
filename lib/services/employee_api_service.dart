import 'dart:convert';

import 'package:authentication/config/config.dart';
import 'package:authentication/models/employee/employee_request_model.dart';
import 'package:authentication/services/shared_service.dart';
import 'package:http/http.dart' as  http;

class EmployeeAPIServices {
  static var client =  http.Client();

  // register new employee
  static Future<bool> employeeRegistration(EmployeeRequestModel model) async{
    var loginDetails = await SharedService.loginDetails();
    var token =  loginDetails!.token;

    Map<String, String> requestHeaders ={
      'Content-Type': 'application/json',
      'Cookie': 'token=$token'
    };

    var url = Uri.http(Config.apiURL, Config.newEmployee);

    var response = await client.post(url, headers: requestHeaders, body: jsonEncode(model.toJson()));

    if(response.statusCode == 200){
      print(response.body);
      return true;
    }else{
      return false;
    }

  }
}