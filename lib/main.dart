import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:provider/provider.dart';
import 'package:vapamaa/Screens/Dashboard/dashboard.dart';

import './constants.dart';
import './Screens/Welcome/welcome.dart';
import 'models/logged_user.dart';

Future main() async {
  await dotenv.load(fileName: ".env");

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Project Vapamaa',
      theme: ThemeData(
          primaryColor: kPrimaryColor, scaffoldBackgroundColor: Colors.white),
      home: ChangeNotifierProvider<LoggedUserModel>(
        create: (context) => LoggedUserModel(),
        child: const DashboardScreen(),
      ),
    );
  }
}
