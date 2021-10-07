import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:weather/DrawerScreen.dart';
import 'package:weather/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
      theme:  ThemeData(
        primaryColor:    Color(0xFFFFFFFF),
        primaryColorDark:  Color(0xff263144),
      ),
      home:HomeScreen()
    );
  }
}
