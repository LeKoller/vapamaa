import 'package:flutter/material.dart';

import 'package:vapamaa/constants.dart';

class DataDisplay extends StatelessWidget {
  final String username;
  final String email;
  final int rank;
  final bool active;

  const DataDisplay({
    Key? key,
    required this.username,
    required this.email,
    required this.rank,
    required this.active,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        IndividualDisplay(data: username),
        IndividualDisplay(data: email),
        IndividualDisplay(
            data: "Rank: ${rank} -> here we measure your influence"),
        IndividualDisplay(data: active ? 'Active' : 'Unactive'),
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
