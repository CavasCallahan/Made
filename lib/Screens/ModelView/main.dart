import 'package:flutter/material.dart';
import 'package:made/GlobalVars.dart';

class ModelScreen extends StatelessWidget {
  final String title;

  ModelScreen({
    @required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkPrimaryColor,
      appBar: AppBar(),
      body: Column(
        children: [
          Container(
              height: 200,
              child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Text(
                      title,
                      style: TextStyle(
                          fontSize: 30,
                          fontFamily: "Comfortaa",
                          fontWeight: FontWeight.normal,
                          color: whiteColor),
                    ),
                  )))
        ],
      ),
    );
  }
}
