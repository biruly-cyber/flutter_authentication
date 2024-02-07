import 'dart:async';
import 'dart:convert';

import 'package:api_cache_manager/models/cache_db_model.dart';
import 'package:api_cache_manager/utils/cache_manager.dart';
import 'package:flutter/cupertino.dart';

import '../models/login_response_model.dart';

class SharedService{
  static Future<bool> isLoggedIn() async{
    var isKeyExist =  await APICacheManager().isAPICacheKeyExist("login_details");

    return isKeyExist;
  }

  static Future<LoginResponse?> loginDetails() async{
    var isKeyExist = await APICacheManager().isAPICacheKeyExist("login_details");

    if(isKeyExist){
      var cacheData = await APICacheManager().getCacheData("login_details");
      
      return loginResponse(cacheData.syncData);
    }else{
      return null;
    }
  }

  static Future<void> setLoginDetails(
      LoginResponse model,
      ) async {
      APICacheDBModel cacheDBModel = APICacheDBModel(
          key: "login_details",
          syncData: jsonEncode(model.toJson())
      );

      await APICacheManager().addCacheData(cacheDBModel);
  }

  // for the logout
  static Future<void> logout(BuildContext context) async {
    await APICacheManager().deleteCache("login_details");
    Navigator.of(context).pushNamedAndRemoveUntil(
      '/login', (route) => false,
    );
  }

}