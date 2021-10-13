import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

import 'package:vapamaa/Screens/Login/models/email_login.dart';
import 'package:vapamaa/components/account_check.dart';
import 'package:vapamaa/components/rounded_button.dart';
import 'package:vapamaa/components/text_field_container.dart';
import 'package:vapamaa/components/rounded_input_field.dart';

class BodyLogin extends StatelessWidget {
  final String email;

  const BodyLogin({Key? key, this.email = ""}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final emailLoginModel = Provider.of<EmailLoginModel>(context);
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
          TextFieldContainer(
            child: RoundedInputField(
              hintText: email == "" ? "your email" : email,
              icon: Icons.person,
              // onChanged: (value) => setEmail(value),
            ),
          ),
          const TextFieldContainer(
            child: RoundedInputField(
              hintText: "password",
              icon: Icons.lock,
              isPassword: true,
            ),
          ),
          RoundedButton(
            text: "LOGIN",
            press: () {},
            widthFactor: 0.8,
          ),
          SizedBox(height: size.height * 0.02),
          const AccountCheck(),
        ],
      ),
    );
  }
}
