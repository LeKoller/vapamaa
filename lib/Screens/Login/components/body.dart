import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vapamaa/Screens/SignUp/signup.dart';
import 'package:vapamaa/components/account_check.dart';
import 'package:vapamaa/components/rounded_button.dart';

import 'package:vapamaa/components/text_field_container.dart';
import 'package:vapamaa/components/rounded_input_field.dart';
import 'package:vapamaa/constants.dart';
import './background.dart';

class BodyLogin extends StatelessWidget {
  const BodyLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return BackgroundLogin(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text(
            "LOGIN",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
          SvgPicture.asset(
            "assets/icons/login.svg",
            height: size.height * 0.35,
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
          const TextFieldContainer(
            child: RoundedInputField(
              hintText: "your email",
              icon: Icons.person,
              onChanged: null,
            ),
          ),
          const TextFieldContainer(
              child: RoundedInputField(
            hintText: "password",
            icon: Icons.lock,
            onChanged: null,
            suffixIcon: Icons.visibility,
            isPassword: true,
          )),
          RoundedButton(
            text: "LOGIN",
            press: () {},
            widthFactor: 0.8,
          ),
          AccountCheck(press: navigateToSignUpScreen(context)),
        ],
      ),
    );
  }
}
