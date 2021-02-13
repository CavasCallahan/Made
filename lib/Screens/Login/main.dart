import 'package:flutter/material.dart';
import 'package:made/Components/Wave/main.dart';
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
          Stack(
            overflow: Overflow.visible,
            children: [Positioned(child: Wave())],
          )
        ],
      ),
    );
  }
}
