import 'package:flutter/material.dart';
import 'package:vapamaa/constants.dart';

class RoundedInputField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final IconData? suffixIcon;
  final ValueChanged<String>? onChanged;
  final bool isPassword;

  const RoundedInputField({
    Key? key,
    required this.hintText,
    required this.icon,
    this.suffixIcon,
    required this.onChanged,
    this.isPassword = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: isPassword,
      onChanged: onChanged,
      decoration: InputDecoration(
        hintText: hintText,
        icon: Icon(
          icon,
          color: kPrimaryColor,
        ),
        suffixIcon: suffixIcon != null
            ? Icon(
                suffixIcon,
                color: kPrimaryColor,
              )
            : null,
        border: InputBorder.none,
      ),
    );
  }
}
