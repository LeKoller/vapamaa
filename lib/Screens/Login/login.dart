import 'package:flutter/material.dart';
import 'package:vapamaa/Screens/Login/components/background.dart';

import './components/body.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return const Scaffold(
      body: BackgroundLogin(
        child: BodyLogin(),
      ),
    );
  }
}
