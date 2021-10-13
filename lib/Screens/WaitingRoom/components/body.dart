import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vapamaa/Screens/SignUp/models/created_user.dart';
import 'package:vapamaa/Screens/WaitingRoom/components/data_display.dart';
import 'package:vapamaa/components/rounded_button.dart';
import 'package:vapamaa/constants.dart';

class WaitingRoomBody extends StatelessWidget {
  const WaitingRoomBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Consumer<CreatedUserModel>(
      builder: (context, user, child) => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text(
            "W A I T I N G  R O O M",
            style: TextStyle(
              fontWeight: FontWeight.w100,
            ),
          ),
          SizedBox(height: size.height * 0.04),
          DataDisplay(
            user: user,
          ),
          SizedBox(height: size.height * 0.03),
          Container(
            width: size.width * 0.7,
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              color: const Color(0x32EEEEEE),
            ),
            child: const Text(
              waitingRoomBottomMessage,
              textAlign: TextAlign.justify,
              style: TextStyle(
                color: Colors.black38,
              ),
            ),
          ),
          SizedBox(height: size.height * 0.025),
          RoundedButton(
            text: "Resend mail?",
            press: navidateToLoginScreen(context, user.email),
          ),
        ],
      ),
    );
  }
}
