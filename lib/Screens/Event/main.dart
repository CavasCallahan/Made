import 'package:flutter/material.dart';
import 'package:made/GlobalVars.dart';

class EventScreen extends StatefulWidget {
  @override
  _EventScreenState createState() => _EventScreenState();
}

class _EventScreenState extends State<EventScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Container(
            color: darkPrimaryColor,
            height: 250,
            child: Row(
              children: [
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Text(
                      "Events",
                      style: TextStyle(
                          fontSize: 30,
                          fontFamily: "Comfortaa",
                          fontWeight: FontWeight.normal,
                          color: whiteColor),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
