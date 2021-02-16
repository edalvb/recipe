import 'package:flutter/material.dart';

class CircleWidget extends StatelessWidget {
  final Color circleColor;
  final List<Widget> children;

  CircleWidget({this.circleColor, this.children});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 80,
      padding: EdgeInsets.only(top: 10, left: 5),
      decoration: BoxDecoration(shape: BoxShape.circle, color: circleColor),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: children,
      ),
    );
  }
}