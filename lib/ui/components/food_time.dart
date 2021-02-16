import 'package:flutter/material.dart';

class FoodTimeWidget extends StatelessWidget {
  List<Color> colors;
  String name;
  int count;
  String assetPath;
  AlignmentGeometry begin;
  AlignmentGeometry end;
  Offset offset;
  VoidCallback onTap;

  FoodTimeWidget(
      {this.colors,
        this.name,
        this.count,
        this.assetPath,
        this.begin,
        this.end,
        double yoffset,
        this.onTap}) {
    this.offset = Offset(0, yoffset);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: this.onTap,
      child: Container(
        height: 300,
        width: 175,
        margin: EdgeInsets.only(right: 20),
        padding: EdgeInsets.only(top: 45),
        child: DecoratedBox(
          decoration: BoxDecoration(
            gradient:
            LinearGradient(colors: colors, begin: this.begin, end: this.end),
            borderRadius: BorderRadius.all(
              Radius.circular(30),
            ),
          ),
          child: Stack(
            children: [
              Transform.translate(
                //offset: Offset(0, -25),
                offset: this.offset,
                child: Align(
                    alignment: Alignment.topCenter,
                    child: Image.asset(this.assetPath)),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      this.name,
                      style: TextStyle(
                          letterSpacing: 1.5,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "$count+",
                      style: TextStyle(fontSize: 40),
                    ),
                    Text(
                      "DIFETENTS\nRECIPES",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 10, letterSpacing: 1.5),
                    ),
                    SizedBox(
                      height: 40,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}