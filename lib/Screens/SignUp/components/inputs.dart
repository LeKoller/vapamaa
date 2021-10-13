import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'package:vapamaa/Screens/SignUp/models/created_user.dart';
import 'package:vapamaa/Screens/SignUp/models/signup_user.dart';
import 'package:vapamaa/components/rounded_button.dart';
import 'package:vapamaa/components/rounded_input_field.dart';
import 'package:vapamaa/components/text_field_container.dart';

class SignUpInputs extends StatelessWidget {
  final Function goToWaitingRoom;

  const SignUpInputs({
    Key? key,
    required this.goToWaitingRoom,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final baseURL = dotenv.env['BASE_URL'];
    final signUpUserModel =
        Provider.of<SignUpUserModel>(context, listen: false);
    final createdUserModel =
        Provider.of<CreatedUserModel>(context, listen: false);

    Future<CreatedUserModel> createUser() async {
      final response = await http.post(
        Uri.parse("$baseURL/users"),
        headers: {
          'Content-Type': 'application/json',
          'Accept': '*/*',
          'Accept-Encoding': 'gzip, deflate, br',
          'Connection': 'keep-alive'
        },
        body: jsonEncode(signUpUserModel.toJson()),
      );

      if (response.statusCode == 200) {
        Fluttertoast.showToast(
          msg: "Created with success!",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.greenAccent[400],
          textColor: Colors.white,
          fontSize: 16.0,
        );

        CreatedUserModel newUser =
            CreatedUserModel.fromJson(jsonDecode(response.body));

        createdUserModel.setAll(newUser);
        goToWaitingRoom();

        return newUser;
      } else {
        Fluttertoast.showToast(
          msg: "Failed to create user",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.redAccent[400],
          textColor: Colors.white,
          fontSize: 16.0,
        );

        throw Exception('Failed to create user.');
      }
    }

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextFieldContainer(
          child: RoundedInputField(
            hintText: "your email",
            icon: Icons.person,
            onChanged: (value) => signUpUserModel.setEmail(value),
          ),
        ),
        TextFieldContainer(
          child: RoundedInputField(
            hintText: "password",
            icon: Icons.lock,
            isPassword: true,
            onChanged: (value) => signUpUserModel.setPassword(value),
          ),
        ),
        RoundedButton(
          text: "SIGN UP",
          press: createUser,
          widthFactor: 0.8,
        ),
      ],
    );
  }
}
