import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import './components/background.dart';
import './components/body.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: BackgroundSignUp(
        child: BodySignUp(),
      ),
    );
  }
}
