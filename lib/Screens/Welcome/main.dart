import 'package:flutter/material.dart';
import 'package:made/Components/Wave/main.dart';
import 'package:made/GlobalVars.dart';
import 'package:made/Screens/Event/main.dart';

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
            child: FlatButton(
                onPressed: (() {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => EventScreen()));
                }),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                color: secondaryPrimaryColor,
                height: 64,
                minWidth: 285,
                child: Text(
                  "START",
                  style: TextStyle(fontSize: 30, color: whiteColor),
                )),
          )
        ],
      ),
    );
  }
}
