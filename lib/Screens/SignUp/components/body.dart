import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:vapamaa/Screens/SignUp/components/inputs.dart';
import 'package:vapamaa/Screens/SignUp/components/or_divider.dart';
import 'package:vapamaa/components/account_check.dart';
import 'package:vapamaa/components/social_media_button.dart';

class BodySignUp extends StatelessWidget {
  const BodySignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text(
            "S I G N  U P",
            style: TextStyle(fontWeight: FontWeight.w100),
          ),
          SizedBox(height: size.height * 0.03),
          SvgPicture.asset(
            "assets/icons/signup.svg",
            height: size.height * 0.35,
          ),
          const SignUpInputs(),
          SizedBox(height: size.height * 0.02),
          const AccountCheck(login: false),
          const OrDivider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SocialMediaButton(
                iconPath: "assets/icons/facebook.svg",
                press: () {},
              ),
              SocialMediaButton(
                iconPath: "assets/icons/twitter.svg",
                press: () {},
              ),
              SocialMediaButton(
                iconPath: "assets/icons/google-plus.svg",
                press: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
