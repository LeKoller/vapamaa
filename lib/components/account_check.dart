import 'package:flutter/material.dart';

import 'package:vapamaa/constants.dart';

class AccountCheck extends StatelessWidget {
  final bool login;

  const AccountCheck({
    Key? key,
    this.login = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
      Text(
        login ? "Don't have an account? " : "Already have an account? ",
        style: const TextStyle(color: kPrimaryColor),
      ),
      GestureDetector(
        onTap: login
            ? navigateToSignUpScreen(context)
            : navidateToLoginScreen(context, ""),
        child: Text(
          login ? "Sign Up" : "Sign In",
          style: const TextStyle(
              color: kPrimaryColor, fontWeight: FontWeight.bold),
        ),
      ),
    ]);
  }
}
