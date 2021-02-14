import 'package:flutter/material.dart';
import 'package:made/Components/Button/main.dart';
import 'package:made/Components/Wave/main.dart';
import 'package:made/GlobalVars.dart';
import 'package:made/Screens/Login/main.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkPrimaryColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 40),
              child: Wave(),
            ),
          ),
          Text(
            "Welcome to MDE \nSecurity",
            style: TextStyle(fontSize: 30, color: whiteColor),
          ),
          SizedBox(
            height: 200,
          ),
          Padding(
            padding: const EdgeInsets.all(40),
            child: Button(
              onTaped: (() => Navigator.of(context).push(_createRoute())),
              height: 64,
              width: 285,
              background: secondaryPrimaryColor,
              radius: 10,
              content: Text(
                "START",
                style: TextStyle(color: whiteColor, fontSize: 30),
              ),
            ),
          )
        ],
      ),
    );
  }
}

Route _createRoute() {
  return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => LoginScreen(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        var begin = Offset(0.0, 1.0);
        var end = Offset.zero;
        var curve = Curves.ease;
        var tween =
            Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      });
}
