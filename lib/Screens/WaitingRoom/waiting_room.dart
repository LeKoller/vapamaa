import 'package:flutter/material.dart';
import 'package:vapamaa/Screens/SignUp/components/background.dart';
import 'package:vapamaa/Screens/WaitingRoom/components/body.dart';

class WatingRoomScreen extends StatelessWidget {
  const WatingRoomScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: BackgroundSignUp(
        child: WaitingRoomBody(),
      ),
    );
  }
}
