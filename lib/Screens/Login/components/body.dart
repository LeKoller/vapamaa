import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

import 'package:vapamaa/models/email_login.dart';
import 'package:vapamaa/components/account_check.dart';
import 'package:vapamaa/Screens/Login/components/inputs.dart';

class BodyLogin extends StatelessWidget {
  final String email;

  const BodyLogin({Key? key, this.email = ""}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    // setEmail(value) {
    //   var v = value == "" ? email : value;
    //   emailLoginModel.setEmail(v);
    // }

    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text(
            "L O G I N",
            style: TextStyle(fontWeight: FontWeight.w100),
          ),
          SizedBox(height: size.height * 0.03),
          SvgPicture.asset(
            "assets/icons/login.svg",
            height: size.height * 0.35,
          ),
          SizedBox(height: size.height * 0.03),
          LoginInputs(
            email: email,
          ),
          SizedBox(height: size.height * 0.02),
          const AccountCheck(),
        ],
      ),
    );
  }
}
