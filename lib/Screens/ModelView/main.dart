import 'package:flutter/material.dart';
import 'package:made/Components/Button/main.dart';
import 'package:made/GlobalVars.dart';
import 'package:made/Screens/DetailView/main.dart';

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
                  ))),
          Button(
            onTaped: (() => Navigator.of(context).push(_createRoute())),
            height: 64,
            width: 285,
            content: Text("DetailView",
                style: TextStyle(color: whiteColor, fontSize: 30)),
            background: secondaryPrimaryColor,
            radius: 10,
          )
        ],
      ),
    );
  }
}

Route _createRoute() {
  return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => DetailView(),
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
