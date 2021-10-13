import 'package:flutter/material.dart';

import 'package:vapamaa/Screens/SignUp/models/created_user.dart';
import 'package:vapamaa/constants.dart';

class DataDisplay extends StatelessWidget {
  final CreatedUserModel user;

  const DataDisplay({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        IndividualDisplay(data: user.username),
        IndividualDisplay(data: user.email),
        IndividualDisplay(
            data: "Rank: ${user.rank} -> here we measure your influence"),
        IndividualDisplay(data: user.active ? 'Active' : 'Unactive'),
      ],
    );
  }
}

class IndividualDisplay extends StatelessWidget {
  final String data;

  const IndividualDisplay({
    Key? key,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      child: Text(
        data,
        style: const TextStyle(
          color: Colors.black38,
          fontSize: 14,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
      ),
      width: size.width * 0.7,
      padding: const EdgeInsets.all(24),
      margin: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: kPrimaryLightColor,
        borderRadius: BorderRadius.circular(29),
        boxShadow: maaBoxShadow,
      ),
    );
  }
}
