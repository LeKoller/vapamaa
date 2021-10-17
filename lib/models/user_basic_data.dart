class UserBasicDataModel {
  String id;
  String username;
  String email;
  int rank;
  bool active;
  bool deleted;
  String creationDate;

  UserBasicDataModel({
    this.id = '',
    this.username = '',
    this.email = '',
    this.rank = 0,
    this.active = false,
    this.deleted = false,
    this.creationDate = '',
  });

  UserBasicDataModel.fromJson(Map<String, dynamic> json)
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
