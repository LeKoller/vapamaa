import 'package:flutter/foundation.dart';

class SignUpUserModel with ChangeNotifier {
  String email;
  String password;

  SignUpUserModel(this.email, this.password);

  void setEmail(String value) {
    email = value;
    notifyListeners();
  }

  void setPassword(String value) {
    password = value;
    notifyListeners();
  }

  SignUpUserModel.fromJson(Map<String, dynamic> json)
      : email = json['email'],
        password = json['name'];

  Map<String, dynamic> toJson() => {
        'email': email,
        'password': password,
      };
}
