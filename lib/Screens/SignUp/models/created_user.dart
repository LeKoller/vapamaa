class CreatedUserModel {
  final String id;
  final String username;
  final String email;
  final int rank;
  final bool active;
  final bool deleted;
  final String creationDate;

  CreatedUserModel({
    required this.id,
    required this.username,
    required this.email,
    required this.rank,
    required this.active,
    required this.deleted,
    required this.creationDate,
  });

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



// {
//     "_id": "616380f1d1cb503cee14dc0f",
//     "username": "unnamed",
//     "email": "lekoller@gmail.com",
//     "rank": 0,
//     "active": false,
//     "deleted": false,
//     "creationDate": "2021-10-11T00:10:25.879Z",
//     "__v": 0
// }