class EmployeeRequestModel {
  String employeeId;
  String employeeName;
  String gender;
  String employeeEmail;
  String password;
  String employeePhoneNumber;
  String dateOfBirth;
  String address;
  String postOffice;
  String policeStation;
  String city;
  String state;
  String pinNumber;
  String designation;
  String designationType;
  String department;

  EmployeeRequestModel({
    required this.employeeId,
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
  });

  factory EmployeeRequestModel.fromJson(Map<String, dynamic> json) {
    return EmployeeRequestModel(
      employeeId: json['employeeId']!.toString(),
      employeeName: json['employeeName']!.toString(),
      gender: json['gender']!.toString(),
      employeeEmail: json['employeeEmail']!.toString(),
      password: json['password']!.toString(),
      employeePhoneNumber: json['employeePhoneNumber']!.toString(),
      dateOfBirth: json['dateOfBirth']!.toString(),
      address: json['address']!.toString(),
      postOffice: json['postOffice']!.toString(),
      policeStation: json['policeStation']!.toString(),
      city: json['city']!.toString(),
      state: json['state']!.toString(),
      pinNumber: json['pinNumber']!.toString(),
      designation: json['designation']!.toString(),
      designationType: json['designationType']!.toString(),
      department: json['department']!.toString(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'employeeId': employeeId,
      'employeeName': employeeName,
      'gender': gender,
      'employeeEmail': employeeEmail,
      'password': password,
      'employeePhoneNumber': employeePhoneNumber,
      'dateOfBirth': dateOfBirth,
      'address': address,
      'postOffice': postOffice,
      'policeStation': policeStation,
      'city': city,
      'state': state,
      'pinNumber': pinNumber,
      'designation': designation,
      'designationType': designationType,
      'department': department,
    };
  }
}
