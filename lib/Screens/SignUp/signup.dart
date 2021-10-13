import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './components/background.dart';
import './components/body.dart';
import './models/signup_user.dart';
import 'models/created_user.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundSignUp(
        child: MultiProvider(
          providers: [
            ChangeNotifierProvider<SignUpUserModel>(
              create: (context) => SignUpUserModel('', ''),
            ),
            ChangeNotifierProvider<CreatedUserModel>(
              create: (context) => CreatedUserModel(),
            ),
          ],
          child: const BodySignUp(),
        ),
      ),
    );
  }
}
