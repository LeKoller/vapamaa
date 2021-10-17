import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:vapamaa/Screens/Dashboard/dashboard.dart';
import 'package:vapamaa/models/email_login.dart';
import 'package:vapamaa/models/logged_user.dart';

import 'package:vapamaa/components/rounded_button.dart';
import 'package:vapamaa/components/rounded_input_field.dart';
import 'package:vapamaa/components/text_field_container.dart';
import 'package:vapamaa/constants.dart';

class LoginInputs extends StatelessWidget {
  final String email;

  const LoginInputs({
    Key? key,
    this.email = "",
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final baseURL = dotenv.env['BASE_URL'];
    final loggedUserModel = Provider.of<LoggedUserModel>(context);
    final emailLoginModel = Provider.of<EmailLoginModel>(context);

    Future<LoggedUserModel> login() async {
      final response = await http.post(
        Uri.parse("$baseURL/login"),
        headers: {
          'Content-Type': 'application/json',
          'Accept': '*/*',
          'Accept-Encoding': 'gzip, deflate, br',
          'Connection': 'keep-alive'
        },
        body: jsonEncode(emailLoginModel.toJson()),
      );

      if (response.statusCode == 200) {
        Fluttertoast.showToast(
          msg: "Logged with success!",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.greenAccent[400],
          textColor: Colors.white,
          fontSize: 16.0,
        );

        LoggedUserModel user =
            LoggedUserModel.fromJson(jsonDecode(response.body));

        loggedUserModel.save(user);

        await Future.delayed(const Duration(seconds: 1));
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return const DashboardScreen();
        }));

        return user;
      } else {
        Fluttertoast.showToast(
          msg: "Failed to log in.",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.redAccent[400],
          textColor: Colors.white,
          fontSize: 16.0,
        );

        throw Exception('Failed to log in.');
      }
    }

    return Column(
      children: [
        TextFieldContainer(
          child: RoundedInputField(
            hintText: email == "" ? "your email" : email,
            icon: Icons.person,
            onChanged: (value) => emailLoginModel.setEmail(value),
          ),
        ),
        TextFieldContainer(
          child: RoundedInputField(
            hintText: "password",
            icon: Icons.lock,
            isPassword: true,
            onChanged: (value) => emailLoginModel.setPassword(value),
          ),
        ),
        RoundedButton(
          text: "LOGIN",
          press: login,
          widthFactor: 0.8,
        ),
      ],
    );
  }
}
