

import 'dart:convert';

EmployeeResponseModel employeeResponseModel(String, str) => EmployeeResponseModel.fromJson(json.decode(str));

class EmployeeResponseModel {
/*
{
  "success": true,
  "user": {
    "employeeId": "65c3240a0958ecfad8be2f53",
    "name": "akash",
    "email": "aka@gmail.com",
    "password": "$2b$10$IJ6J8Vj4OW/sHTYHbdNJfOdKsFruLWOjUSBmuZLi.KHn0MYBAE7d6",
    "designation": "Software",
    "designationType": "employee",
    "_id": "65c3240a0958ecfad8be2f55",
    "createdAt": "2024-02-07T06:32:42.320Z",
    "updatedAt": "2024-02-07T06:32:42.320Z",
    "__v": 0
  },
  "employee": {
    "employeeName": "akash",
    "gender": "Male",
    "employeeEmail": "aka@gmail.com",
    "password": "$2b$10$IJ6J8Vj4OW/sHTYHbdNJfOdKsFruLWOjUSBmuZLi.KHn0MYBAE7d6",
    "employeePhoneNumber": "1234567890",
    "dateOfBirth": "1990-01-01",
    "address": "123 Main Street",
    "postOffice": "Central",
    "policeStation": "City",
    "city": "Metropolis",
    "state": "State",
    "pinNumber": "123456",
    "designation": "Software",
    "designationType": "employee",
    "department": "Engineering",
    "_id": "65c3240a0958ecfad8be2f53",
    "createdAt": "2024-02-07T06:32:42.314Z",
    "updatedAt": "2024-02-07T06:32:42.314Z",
    "__v": 0
  },
  "message": "Account created successfully!"
}
*/

  late bool success;
  late EmployeeResponseModelEmployee employee;
  late String message;

  EmployeeResponseModel({
   required this.success,
   required this.employee,
   required this.message,
  });
  EmployeeResponseModel.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    employee = ((json['employee'] != null) ? EmployeeResponseModelEmployee.fromJson(json['employee']) : null)!;
    message = json['message']!.toString();
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['success'] = success;
    data['employee'] = employee.toJson();
    data['message'] = message;
    return data;
  }
}



class EmployeeResponseModelEmployee {
/*
{
  "employeeName": "akash",
  "gender": "Male",
  "employeeEmail": "aka@gmail.com",
  "password": "$2b$10$IJ6J8Vj4OW/sHTYHbdNJfOdKsFruLWOjUSBmuZLi.KHn0MYBAE7d6",
  "employeePhoneNumber": "1234567890",
  "dateOfBirth": "1990-01-01",
  "address": "123 Main Street",
  "postOffice": "Central",
  "policeStation": "City",
  "city": "Metropolis",
  "state": "State",
  "pinNumber": "123456",
  "designation": "Software",
  "designationType": "employee",
  "department": "Engineering",
  "_id": "65c3240a0958ecfad8be2f53",
  "createdAt": "2024-02-07T06:32:42.314Z",
  "updatedAt": "2024-02-07T06:32:42.314Z",
  "__v": 0
}
*/

  late String employeeName;
  late String gender;
  late String employeeEmail;
  late String password;
  late String employeePhoneNumber;
  late String dateOfBirth;
  late String address;
  late String postOffice;
  late String policeStation;
  late String city;
  late String state;
  late String pinNumber;
  late String designation;
  late String designationType;
  late String department;
  late String Id;
  late String createdAt;
  late String updatedAt;

  EmployeeResponseModelEmployee({
    required this.employeeName,
    required this.gender,
    required this.employeeEmail,
    required this.password,
    required this.employeePhoneNumber,
    required this.dateOfBirth,
    required this.address,
    required this.postOffice,
    required this.policeStation,
    required this.city,
    required this.state,
    required this.pinNumber,
    required this.designation,
    required this.designationType,
    required this.department,
    required this.Id,
    required this.createdAt,
    required this.updatedAt,
  });
  EmployeeResponseModelEmployee.fromJson(Map<String, dynamic> json) {
    employeeName = json['employeeName']!.toString();
    gender = json['gender']!.toString();
    employeeEmail = json['employeeEmail']!.toString();
    password = json['password']!.toString();
    employeePhoneNumber = json['employeePhoneNumber']!.toString();
    dateOfBirth = json['dateOfBirth']!.toString();
    address = json['address']!.toString();
    postOffice = json['postOffice']!.toString();
    policeStation = json['policeStation']!.toString();
    city = json['city']!.toString();
    state = json['state']!.toString();
    pinNumber = json['pinNumber']!.toString();
    designation = json['designation']!.toString();
    designationType = json['designationType']!.toString();
    department = json['department']!.toString();
    Id = json['_id']!.toString();
    createdAt = json['createdAt']!.toString();
    updatedAt = json['updatedAt']!.toString();
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['employeeName'] = employeeName;
    data['gender'] = gender;
    data['employeeEmail'] = employeeEmail;
    data['password'] = password;
    data['employeePhoneNumber'] = employeePhoneNumber;
    data['dateOfBirth'] = dateOfBirth;
    data['address'] = address;
    data['postOffice'] = postOffice;
    data['policeStation'] = policeStation;
    data['city'] = city;
    data['state'] = state;
    data['pinNumber'] = pinNumber;
    data['designation'] = designation;
    data['designationType'] = designationType;
    data['department'] = department;
    data['_id'] = Id;
    data['createdAt'] = createdAt;
    data['updatedAt'] = updatedAt;
    return data;
  }
}

// class EmployeeResponseModelUser {
// /*
// {
//   "employeeId": "65c3240a0958ecfad8be2f53",
//   "name": "akash",
//   "email": "aka@gmail.com",
//   "password": "$2b$10$IJ6J8Vj4OW/sHTYHbdNJfOdKsFruLWOjUSBmuZLi.KHn0MYBAE7d6",
//   "designation": "Software",
//   "designationType": "employee",
//   "_id": "65c3240a0958ecfad8be2f55",
//   "createdAt": "2024-02-07T06:32:42.320Z",
//   "updatedAt": "2024-02-07T06:32:42.320Z",
//   "__v": 0
// }
// */
//
//   String employeeId;
//   String name;
//   String email;
//   String password;
//   String designation;
//   String designationType;
//   String Id;
//   String createdAt;
//   String updatedAt;
//
//   EmployeeResponseModelUser({
//    required this.employeeId,
//    required this.name,
//    required this.email,
//    required this.password,
//    required this.designation,
//    required this.designationType,
//    required this.Id,
//    required this.createdAt,
//    required this.updatedAt,
//   });
//
//   EmployeeResponseModelUser.fromJson(Map<String, dynamic> json) {
//     employeeId = json['employeeId']!.toString();
//     name = json['name']!.toString();
//     email = json['email']!.toString();
//     password = json['password']!.toString();
//     designation = json['designation']!.toString();
//     designationType = json['designationType']!.toString();
//     Id = json['_id']!.toString();
//     createdAt = json['createdAt']!.toString();
//     updatedAt = json['updatedAt']!.toString();
//   }
//   Map<String, dynamic> toJson() {
//     final data = <String, dynamic>{};
//     data['employeeId'] = employeeId;
//     data['name'] = name;
//     data['email'] = email;
//     data['password'] = password;
//     data['designation'] = designation;
//     data['designationType'] = designationType;
//     data['_id'] = Id;
//     data['createdAt'] = createdAt;
//     data['updatedAt'] = updatedAt;
//     return data;
//   }
// }
