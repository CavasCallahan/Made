import 'package:flutter/material.dart';
import 'package:made/GlobalVars.dart';
import 'package:made/Screens/Welcome/main.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'M.D.E Security',
        theme:
            ThemeData(primaryColor: darkPrimaryColor, fontFamily: "Comfortaa"),
        home: WelcomeScreen());
  }
}
