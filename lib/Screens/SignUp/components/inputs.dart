import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'package:vapamaa/Screens/SignUp/models/created_user.dart';
import 'package:vapamaa/Screens/SignUp/models/signup_user.dart';
import 'package:vapamaa/components/rounded_button.dart';
import 'package:vapamaa/components/rounded_input_field.dart';
import 'package:vapamaa/components/text_field_container.dart';

class SignUpInputs extends StatelessWidget {
  const SignUpInputs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    final baseURL = dotenv.env['BASE_URL'];
    final signUpUserModel =
        Provider.of<SignUpUserModel>(context, listen: false);

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
        print(jsonDecode(response.body));

        return CreatedUserModel.fromJson(jsonDecode(response.body));
      } else {
        throw Exception('Failed to load album');
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
