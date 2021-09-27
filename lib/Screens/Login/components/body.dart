import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vapamaa/Screens/Login/components/text_field_container.dart';
import 'package:vapamaa/Screens/Welcome/components/background.dart';
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
          SvgPicture.asset(
            "assets/icons/login.svg",
            height: size.height * 0.35,
          ),
          const TextFieldContainer(
            child: TextField(
              decoration: InputDecoration(
                hintText: "Your Email",
                icon: Icon(
                  Icons.person,
                  color: kPrimaryColor,
                ),
                border: InputBorder.none,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class RoundedInputField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;

  const RoundedInputField(
      {Key? key,
      required this.hintText,
      required this.icon,
      required this.onChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
