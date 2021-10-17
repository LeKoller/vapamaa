import 'package:flutter/foundation.dart';
import 'package:vapamaa/models/user_basic_data.dart';

class LoggedUserModel with ChangeNotifier {
  bool auth;
  String token;
  UserBasicDataModel? user;

  LoggedUserModel({
    this.auth = false,
    this.token = "",
    this.user,
  });

  void save(LoggedUserModel model) {
    auth = model.auth;
    token = model.token;
    user = model.user;
    notifyListeners();
  }

  LoggedUserModel.fromJson(Map<String, dynamic> json)
      : auth = json['auth'],
        token = json['token'],
        user = UserBasicDataModel.fromJson(json['user']);

  Map<String, dynamic> toJson() => {
        'auth': auth,
        'token': token,
        'user': user,
      };
}
