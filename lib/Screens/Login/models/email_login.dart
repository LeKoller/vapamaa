import 'package:flutter/foundation.dart';

class EmailLoginModel with ChangeNotifier {
  String email;
  String password;

  EmailLoginModel(this.email, this.password);

  void setEmail(String value) {
    email = value;
    notifyListeners();
  }

  void setPassword(String value) {
    password = value;
    notifyListeners();
  }

  EmailLoginModel.fromJson(Map<String, dynamic> json)
      : email = json['email'],
        password = json['name'];

  Map<String, dynamic> toJson() => {
        'email': email,
        'password': password,
      };
}
