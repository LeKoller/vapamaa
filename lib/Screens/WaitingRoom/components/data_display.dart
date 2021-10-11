import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vapamaa/Screens/SignUp/models/created_user.dart';

class DataDisplay extends StatefulWidget {
  const DataDisplay({Key? key}) : super(key: key);

  @override
  _DataDisplayState createState() => _DataDisplayState();
}

class _DataDisplayState extends State<DataDisplay> {
  @override
  Widget build(BuildContext context) {
    return Consumer<CreatedUserModel>(
      builder: (context, user, child) => Column(
        children: <Widget>[
          Text(user.username),
          Text(user.email),
          Text("Status: ${user.active ? 'Active' : 'Not Active'}"),
          Text("Ranking: ${user.rank}"),
        ],
      ),
    );
  }
}
