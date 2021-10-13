import 'dart:ui';

import 'package:flutter/material.dart';

import '../constants.dart';

class MyBackdropFilter extends StatelessWidget {
  const MyBackdropFilter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
        child: Container(
          color: Colors.black.withOpacity(0.2),
          child: const Text(waitingRoomBottomMessage),
        ),
      ),
    );
  }
}
