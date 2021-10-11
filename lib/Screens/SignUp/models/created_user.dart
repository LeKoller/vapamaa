import 'package:flutter/foundation.dart';

class CreatedUserModel with ChangeNotifier {
  String id;
  String username;
  String email;
  int rank;
  bool active;
  bool deleted;
  String creationDate;
  late bool isUserCreated;

  CreatedUserModel({
    this.id = '',
    this.username = '',
    this.email = '',
    this.rank = 0,
    this.active = false,
    this.deleted = false,
    this.creationDate = '',
    this.isUserCreated = false,
  });

  void setCreated() {
    isUserCreated = true;
  }

  void setUsername(String value) {
    if (active) {
      username = value;
      notifyListeners();
    }
  }

  void setActive() {
    active = true;
    notifyListeners();
  }

  void setAll(CreatedUserModel model) {
    id = model.id;
    username = model.username;
    email = model.email;
    rank = model.rank;
    active = model.active;
    deleted = model.deleted;
    creationDate = model.creationDate;
  }

  CreatedUserModel.fromJson(Map<String, dynamic> json)
      : id = json['_id'],
        username = json['username'],
        email = json['email'],
        rank = json['rank'],
        active = json['active'],
        deleted = json['deleted'],
        creationDate = json['creationDate'];

  Map<String, dynamic> toJson() => {
        '_id': id,
        'username': username,
        'email': email,
        'rank': rank,
        'active': active,
        'deleted': deleted,
        'creationDate': creationDate,
      };
}
