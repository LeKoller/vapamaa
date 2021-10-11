import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';

import './components/background.dart';
import './components/body.dart';
import './models/signup_user.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundSignUp(
        child: ChangeNotifierProvider<SignUpUserModel>(
          create: (context) => SignUpUserModel('', ''),
          child: const BodySignUp(),
        ),
      ),
    );
  }
}
