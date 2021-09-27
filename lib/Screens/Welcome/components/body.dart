import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import './background.dart';
import 'package:vapamaa/components/rounded_button.dart';
import 'package:vapamaa/Screens/Login/login.dart';
import 'package:vapamaa/constants.dart';

class BodyWelcome extends StatelessWidget {
  const BodyWelcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return BackgroundWelcome(
      SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              "WELCOME TO VAPAMAA!",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: size.height * 0.05,
            ),
            SvgPicture.asset(
              "assets/icons/chat.svg",
              height: size.height * 0.45,
            ),
            SizedBox(
              height: size.height * 0.05,
            ),
            RoundedButton(
              text: "LOGIN",
              press: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const LoginScreen();
                }));
              },
            ),
            RoundedButton(
              text: "SIGN UP",
              press: () {},
              color: kPrimaryLightColor,
              textColor: Colors.black54,
            ),
          ],
        ),
      ),
    );
  }
}
