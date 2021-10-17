import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:vapamaa/Screens/Dashboard/components/background.dart';
import 'package:vapamaa/Screens/Dashboard/components/body.dart';
import 'package:vapamaa/constants.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  bool isLogged = false;

  checkLogin() async {
    final prefs = await SharedPreferences.getInstance();

    setState(() {
      isLogged = prefs.getBool('auth') ?? false;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (!isLogged) {
      navigateToWelcomeScreen(context);
    }

    return const Scaffold(
      body: DashboardBackground(
        child: SizedBox(
          child: DashboardBody(),
        ),
      ),
    );
  }
}
