import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:vapamaa/Screens/Login/components/background.dart';
import 'package:vapamaa/models/email_login.dart';
import 'package:vapamaa/models/logged_user.dart';
import './components/body.dart';

class LoginScreen extends StatelessWidget {
  final String email;

  const LoginScreen({Key? key, this.email = ""}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: BackgroundLogin(
        child: MultiProvider(
          providers: [
            ChangeNotifierProvider<EmailLoginModel>(
              create: (context) => EmailLoginModel("", ""),
            ),
            ChangeNotifierProvider<LoggedUserModel>(
              create: (context) => LoggedUserModel(),
            )
          ],
          child: BodyLogin(
            email: email,
          ),
        ),
      ),
    );
  }
}
