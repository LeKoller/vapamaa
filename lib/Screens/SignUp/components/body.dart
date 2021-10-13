import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:vapamaa/Screens/SignUp/components/inputs.dart';
import 'package:vapamaa/Screens/SignUp/components/or_divider.dart';
import 'package:vapamaa/Screens/WaitingRoom/components/body.dart';
import 'package:vapamaa/components/account_check.dart';
import 'package:vapamaa/components/social_media_button.dart';

class BodySignUp extends StatefulWidget {
  const BodySignUp({Key? key}) : super(key: key);

  @override
  _BodySignUpState createState() => _BodySignUpState();
}

class _BodySignUpState extends State<BodySignUp> {
  bool _waitingRoom = false;

  void toggleWaitingRoom() {
    setState(() {
      _waitingRoom = !_waitingRoom;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
        child: _waitingRoom
            ? const WaitingRoomBody()
            : Column(
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
                  SignUpInputs(
                    goToWaitingRoom: toggleWaitingRoom,
                  ),
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
              ));
  }
}
