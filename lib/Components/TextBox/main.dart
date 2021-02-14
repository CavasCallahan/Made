import 'package:flutter/material.dart';

class TextBox extends StatelessWidget {
  final Color primarycolor;
  final TextStyle textStyle;
  final Color secondarycolor;
  final Color hintcolor;
  final InputDecoration decoration;
  final bool isScret;

  const TextBox({
    this.isScret,
    this.primarycolor,
    this.textStyle,
    this.secondarycolor,
    this.hintcolor,
    this.decoration,
  }) : super();

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: secondarycolor),
        child: Theme(
            data: new ThemeData(
                primaryColor: primarycolor,
                accentColor: secondarycolor,
                hintColor: hintcolor),
            child: TextField(
              obscureText: isScret == null ? false : true,
              decoration: decoration,
              style: textStyle,
            )));
  }
}
