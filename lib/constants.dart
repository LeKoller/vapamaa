// ignore_for_file: prefer_function_declarations_over_variables

import 'package:flutter/material.dart';

import 'package:vapamaa/Screens/Login/login.dart';
import 'package:vapamaa/Screens/SignUp/signup.dart';
import 'package:vapamaa/Screens/Dashboard/dashboard.dart';
import 'package:vapamaa/Screens/Welcome/welcome.dart';

const kPrimaryColor = Color(0xFF6F35A5);
const kPrimaryLightColor = Color(0xFFF1E6FF);

Function navigateToWelcomeScreen = (context) {
  return () {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return const WelcomeScreen();
    }));
  };
};

Function navigateToSignUpScreen = (context) {
  return () {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return const SignUpScreen();
    }));
  };
};

Function navidateToLoginScreen = (context, email) {
  return () {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return LoginScreen(email: email);
    }));
  };
};

Function navidateToDashboardScreen = (context) {
  return () {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return const DashboardScreen();
    }));
  };
};

const waitingRoomBottomMessage =
    "This is the lobby of our social space! We are waiting for you to confirm your email address by the one we sent you.";

const maaBoxShadow = [
  BoxShadow(
    blurRadius: 10,
    color: Colors.black12,
    spreadRadius: 5,
    offset: Offset(0, 3),
  ),
];
