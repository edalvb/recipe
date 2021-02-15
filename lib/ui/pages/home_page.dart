import 'package:flutter/material.dart';
import 'dart:math' as math;

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF101621),
      body: Stack(
        children: [
          Transform.translate(
            offset: Offset(60, -40),
            child: Align(
                alignment: Alignment.topRight,
                child: Image.asset("assets/images/huevo_frito.png")),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Row(
              children: [
                Expanded(child: SizedBox(), flex: 1),
                Expanded(
                  flex: 4,
                  child: Container(
                    height: 500,
                    width: 200,
                    decoration: BoxDecoration(
                        color: Color(0xFF222B3B),
                        borderRadius:
                            BorderRadius.only(topLeft: Radius.circular(90))),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20),
                Text(
                  "Welcome Back",
                  style: TextStyle(color: Color(0xFFA1A5AB), fontSize: 20),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 150, top: 30),
                  child: Text(
                    "What do you want to cook today?",
                    style: TextStyle(fontSize: 35),
                  ),
                ),
                SizedBox(height: 20),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      FoodTimeWidget(
                        colors: [
                          Color(0xFFFF114E),
                          Color(0xFFFF6D1B),
                        ],
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        name: "BREACKFAST",
                        count: 245,
                        assetPath: "assets/images/sandwich.png",
                        yoffset: -15.0,
                      ),
                      FoodTimeWidget(
                        colors: [Color(0xFF3023AE), Color(0xFFC86DD7)],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        name: "LUNCH",
                        count: 358,
                        assetPath: "assets/images/ramen.png",
                        yoffset: -45.0,
                      ),
                      FoodTimeWidget(
                        colors: [Color(0xFF3023AE), Color(0xFF10A97E)],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomRight,
                        name: "DINNER",
                        count: 358,
                        assetPath: "assets/images/ramen.png",
                        yoffset: -45.0,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CircleWidget(
                      circleColor: Color(0xFF10A97E),
                      children: [
                        Text("WHAT'S\nIN MAY"),
                        Transform.rotate(
                          angle: math.pi / 0.511,
                          child: Text(
                            "Fridge",
                            style: TextStyle(
                                color: Colors.yellow,
                                fontSize: 28,
                                fontFamily: "Ultra Refresh"),
                          ),
                        )
                      ],
                    ),
                    CircleWidget(
                      circleColor: Color(0xFF1E5CFC),
                      children: [
                        SizedBox(height: 9),
                        Text(
                          "INGREDIENTS",
                          style: TextStyle(fontSize: 10),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Transform.rotate(
                          angle: math.pi / 0.511,
                          child: Text(
                            "SCAN\nCOOK",
                            style: TextStyle(
                                color: Colors.yellow,
                                fontSize: 28,
                                fontFamily: "Ultra Refresh",
                                height: 0.6),
                          ),
                        )
                      ],
                    ),
                    CircleWidget(
                      circleColor: Color(0xFFFFEB00),
                      children: [
                        Text(
                          "MY ADD",
                          style: TextStyle(color: Colors.black, fontSize: 10),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Transform.rotate(
                          angle: math.pi / 0.511,
                          child: Text(
                            "RECIPE",
                            style: TextStyle(
                                color: Color(0xFF1E5CFC),
                                fontSize: 28,
                                fontFamily: "Ultra Refresh"),
                          ),
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class FoodTimeWidget extends StatelessWidget {
  List<Color> colors;
  String name;
  int count;
  String assetPath;
  AlignmentGeometry begin;
  AlignmentGeometry end;
  Offset offset;

  FoodTimeWidget(
      {this.colors,
      this.name,
      this.count,
      this.assetPath,
      this.begin,
      this.end,
      double yoffset}) {
    this.offset = Offset(0, yoffset);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}

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
