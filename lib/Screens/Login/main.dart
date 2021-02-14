import 'package:flutter/material.dart';
import 'package:made/Components/TextBox/main.dart';
import 'package:made/GlobalVars.dart';

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
          FlatButton(onPressed: (() => null), child: Text("Log In"))
        ],
      ),
    );
  }
}
