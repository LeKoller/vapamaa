import 'package:flutter/material.dart';
import 'package:vapamaa/Screens/WaitingRoom/components/data_display.dart';

class WaitingRoomBody extends StatelessWidget {
  const WaitingRoomBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        const Text(
          "W A I T I N G  R O O M",
          style: TextStyle(fontWeight: FontWeight.w100),
        ),
        SizedBox(height: size.height * 0.03),
        const DataDisplay(),
      ],
    );
  }
}
