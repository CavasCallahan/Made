import 'package:flutter/material.dart';
import 'package:made/GlobalVars.dart';

class Circle extends StatelessWidget {
  final double width;
  final double height;
  final Color color;
  final Widget widget;

  const Circle({
    @required this.width,
    @required this.height,
    this.color,
    this.widget,
  }) : super();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(color: color, shape: BoxShape.circle),
      child: widget,
    );
  }
}
