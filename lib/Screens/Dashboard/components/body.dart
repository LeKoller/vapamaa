import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:vapamaa/models/logged_user.dart';
import 'package:vapamaa/components/data_display.dart';
import 'package:vapamaa/components/rounded_button.dart';
import 'package:vapamaa/constants.dart';

class DashboardBody extends StatelessWidget {
  const DashboardBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Consumer<LoggedUserModel>(
        builder: (_, logged, __) => Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              "D A S H B O A R D",
              style: TextStyle(
                fontWeight: FontWeight.w100,
              ),
            ),
            SizedBox(height: size.height * 0.04),
            logged.user != null
                ? DataDisplay(
                    username: logged.user!.username,
                    email: logged.user!.email,
                    rank: logged.user!.rank,
                    active: logged.user!.active,
                  )
                : SizedBox(height: size.height * 0.03),
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
              press: () {},
            ),
          ],
        ),
      ),
    );
  }
}
