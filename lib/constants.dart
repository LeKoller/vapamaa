// ignore_for_file: prefer_function_declarations_over_variables

import 'package:flutter/material.dart';

import 'package:vapamaa/Screens/Login/login.dart';
import 'package:vapamaa/Screens/SignUp/signup.dart';
import 'package:vapamaa/Screens/WaitingRoom/waiting_room.dart';

const kPrimaryColor = Color(0xFF6F35A5);
const kPrimaryLightColor = Color(0xFFF1E6FF);

Function navigateToSignUpScreen = (context) {
  return () {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return const SignUpScreen();
    }));
  };
};

Function navidateToLoginScreen = (context) {
  return () {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return const LoginScreen();
    }));
  };
};

Function navidateToWatingRoomScreen = (context) {
  return () {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return const WatingRoomScreen();
    }));
  };
};
