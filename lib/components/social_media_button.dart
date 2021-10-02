import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:vapamaa/constants.dart';

class SocialMediaButton extends StatelessWidget {
  final String iconPath;
  final void Function() press;

  const SocialMediaButton({
    Key? key,
    required this.iconPath,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 8),
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          border: Border.all(
            width: 2,
            color: kPrimaryLightColor,
          ),
          shape: BoxShape.circle,
        ),
        child: SvgPicture.asset(
          iconPath,
          height: 20,
          width: 20,
          color: kPrimaryColor,
        ),
      ),
    );
  }
}
