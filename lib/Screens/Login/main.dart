import 'package:flutter/material.dart';
import 'package:made/Components/Button/main.dart';
import 'package:made/Components/TextBox/main.dart';
import 'package:made/GlobalVars.dart';
import 'package:made/Screens/Main/main.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkPrimaryColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Spacer(),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 60),
              child: TextBox(
                  textStyle: TextStyle(
                      fontFamily: "Comfortaa", fontSize: 20, color: whiteColor),
                  primarycolor: Colors.transparent,
                  secondarycolor: secondaryPrimaryColor,
                  hintcolor: whiteColor,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: secondaryPrimaryColor,
                    hintText: "E-mail",
                    border: InputBorder.none,
                  ))),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 40),
              child: TextBox(
                  isScret: false,
                  textStyle: TextStyle(
                      fontFamily: "Comfortaa", fontSize: 20, color: whiteColor),
                  primarycolor: Colors.transparent,
                  secondarycolor: secondaryPrimaryColor,
                  hintcolor: whiteColor,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: secondaryPrimaryColor,
                    hintText: "PassWord",
                    border: InputBorder.none,
                  ))),
          Spacer(),
          Padding(
            padding: const EdgeInsets.all(40),
            child: Button(
              onTaped: (() => Navigator.of(context).push(_createRoute())),
              height: 64,
              width: 285,
              background: secondaryPrimaryColor,
              radius: 10,
              content: Text(
                "Log In",
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
      pageBuilder: (context, animation, secondaryAnimation) => MainScreen(),
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
