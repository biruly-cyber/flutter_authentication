
import 'dart:convert';

LoginResponse loginResponse(String str)=>
    LoginResponse.fromJson(json.decode(str));


class LoginResponseUser {
/*
{
  "_id": "65c0c93f9bb2b7f3a8988f99",
  "name": "biruly",
  "email": "biruly@gmail.com",
  "password": "$2b$10$UpzIgGFoZ.zFqIZTtR42JepfjU9z9Bjiz/fVsTvHM3jHIxSJKxLNu",
  "designation": "admin",
  "designationType": "admin",
  "createdAt": "2024-02-05T11:40:47.225Z",
  "updatedAt": "2024-02-05T11:40:47.225Z",
  "__v": 0
}
*/

late String Id;
 late  String name;
late  String email;
 late String password;
late  String designation;
 late String designationType;
 late String createdAt;
 late String updatedAt;

  LoginResponseUser({
    required this.Id,
    required this.name,
    required this.email,
    required this.password,
    required this.designation,
    required this.designationType,
    required this.createdAt,
    required this.updatedAt,
  });
  LoginResponseUser.fromJson(Map<String, dynamic> json) {
    Id = json['_id']!.toString();
    name = json['name']!.toString();
    email = json['email']!.toString();
    password = json['password']!.toString();
    designation = json['designation']!.toString();
    designationType = json['designationType']!.toString();
    createdAt = json['createdAt']!.toString();
    updatedAt = json['updatedAt']!.toString();

  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['_id'] = Id;
    data['name'] = name;
    data['email'] = email;
    data['password'] = password;
    data['designation'] = designation;
    data['designationType'] = designationType;
    data['createdAt'] = createdAt;
    data['updatedAt'] = updatedAt;
    return data;
  }
}

class LoginResponse {
/*
{
  "success": true,
  "token": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJfaWQiOiI2NWMwYzkzZjliYjJiN2YzYTg5ODhmOTkiLCJpYXQiOjE3MDcxOTgxNjIsImV4cCI6MTcyNDQ3ODE2Mn0.z-neVl9daBq6TkSEKCc5KUw2rfHAHWRHJoO0n_ywwbk",
  "user": {
    "_id": "65c0c93f9bb2b7f3a8988f99",
    "name": "biruly",
    "email": "biruly@gmail.com",
    "password": "$2b$10$UpzIgGFoZ.zFqIZTtR42JepfjU9z9Bjiz/fVsTvHM3jHIxSJKxLNu",
    "designation": "admin",
    "designationType": "admin",
    "createdAt": "2024-02-05T11:40:47.225Z",
    "updatedAt": "2024-02-05T11:40:47.225Z",
    "__v": 0
  },
  "message": "welcome back biruly "
}
*/

  late bool success;
  late String token;
  late LoginResponseUser user;
  late String message;

  LoginResponse({
    required this.success,
    required this.token,
    required this.user,
    required this.message,
  });
  LoginResponse.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    token = json['token']!.toString();
    user = ((json['user'] != null) ? LoginResponseUser.fromJson(json['user']) : null)!;
    message = json['message']!.toString();
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['success'] = success;
    data['token'] = token;
    data['user'] = user.toJson();
    data['message'] = message;
    return data;
  }
}
