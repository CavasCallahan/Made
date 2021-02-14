import 'package:flutter/material.dart';
import 'package:made/Components/Button/main.dart';
import 'package:made/Components/TextBox/main.dart';
import 'package:made/GlobalVars.dart';

class RegisterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkPrimaryColor,
      body: Column(
        children: [
          Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 20),
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
                )),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 20),
            child: TextBox(
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
                )),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 20),
            child: TextBox(
                textStyle: TextStyle(
                    fontFamily: "Comfortaa", fontSize: 20, color: whiteColor),
                primarycolor: Colors.transparent,
                secondarycolor: secondaryPrimaryColor,
                hintcolor: whiteColor,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: secondaryPrimaryColor,
                  hintText: "ConfirmPass",
                  border: InputBorder.none,
                )),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.all(40),
            child: Button(
              onTaped: (() => null),
              height: 64,
              width: 285,
              content: Text("Register",
                  style: TextStyle(color: whiteColor, fontSize: 30)),
              background: secondaryPrimaryColor,
              radius: 10,
            ),
          )
        ],
      ),
    );
  }
}
