import 'package:flutter/material.dart';
import 'package:made/Components/Circle/main.dart';

import '../../GlobalVars.dart';

class Wave extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Circle(
          width: 300,
          height: 300,
          color: theardPrimaryColor,
          widget: Center(
            child: Circle(
              height: 200,
              width: 200,
              color: secondaryPrimaryColor,
              widget: Center(
                child: Circle(
                  height: 100,
                  width: 100,
                  color: fourthPrimaryColor,
                  widget: Center(
                    child: Text(
                      "M",
                      style: TextStyle(fontSize: 50, color: whiteColor),
                    ),
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
