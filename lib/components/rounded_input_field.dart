import 'package:flutter/material.dart';
import 'package:vapamaa/constants.dart';

class RoundedInputField extends StatefulWidget {
  final String hintText;
  final IconData icon;
  final IconButton? suffixIcon;
  final bool isPassword;
  final void Function(String)? onChanged;

  const RoundedInputField({
    Key? key,
    required this.hintText,
    required this.icon,
    this.suffixIcon,
    this.isPassword = false,
    this.onChanged,
  }) : super(key: key);

  @override
  _RoundedInputFieldState createState() => _RoundedInputFieldState();
}

class _RoundedInputFieldState extends State<RoundedInputField> {
  final TextEditingController _controller = TextEditingController();
  bool _isPasswordVisible = false;

  void passwordControl() {
    setState(() {
      _isPasswordVisible = !_isPasswordVisible;
    });
  }

  void _performOnChange() {
    widget.onChanged!(_controller.text);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _controller.addListener(_performOnChange);
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: widget.isPassword && !_isPasswordVisible,
      controller: _controller,
      decoration: InputDecoration(
        hintText: widget.hintText,
        icon: Icon(
          widget.icon,
          color: kPrimaryColor,
        ),
        suffixIcon: widget.isPassword
            ? IconButton(
                onPressed: passwordControl,
                icon: _isPasswordVisible
                    ? const Icon(
                        Icons.visibility_off,
                        color: kPrimaryColor,
                      )
                    : const Icon(
                        Icons.visibility,
                        color: kPrimaryColor,
                      ),
              )
            : null,
        border: InputBorder.none,
      ),
    );
  }
}
