class SignUp {
  final String? name;
  final String? email;
  final String? password;
  final String? designation;
  final String? designationType;

  SignUp({
    this.name,
    this.email,
    this.password,
    this.designation,
    this.designationType,
  });

  SignUp.fromJson(Map<String, dynamic> json)
      : name = json['name'] as String?,
        email = json['email'] as String?,
        password = json['password'] as String?,
        designation = json['designation'] as String?,
        designationType = json['designationType'] as String?;

  Map<String, dynamic> toJson() => {
    'name' : name,
    'email' : email,
    'password' : password,
    'designation' : designation,
    'designationType' : designationType
  };
}