import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final double height;
  final double width;
  final Color background;
  final Color foreground;
  final double radius;
  final Text content;
  final Function onTaped;

  Button(
      {this.onTaped,
      this.height,
      this.width,
      this.background,
      this.foreground,
      this.radius,
      this.content});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(radius),
      onTap: (onTaped),
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
            color: background, borderRadius: BorderRadius.circular(radius)),
        child: Center(
          child: content,
        ),
      ),
    );
  }
}
