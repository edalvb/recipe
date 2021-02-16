import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:recipe/ui/components/circle_widget.dart';
import 'package:recipe/ui/components/food_time.dart';

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
                        onTap: ()=> showBreackFastPage(context),
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

  showBreackFastPage(BuildContext context) {
    Navigator.pushNamed(context, "/breackfast_page");
  }
}
