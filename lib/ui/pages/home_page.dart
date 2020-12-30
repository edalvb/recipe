import 'package:flutter/material.dart';

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
                SizedBox(height: 45),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      FoodTimeWidget(
                        colors: [Color(0xFFFF114E), Color(0xFFFF6D1B)],
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        name: "BREACKFAST",
                        count: 245,
                        assetPath: "assets/images/sandwich.png",
                      ),
                      FoodTimeWidget(
                        colors: [Color(0xFF3023AE), Color(0xFFC86DD7)],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        name: "LUNCH",
                        count: 358,
                        assetPath: "assets/images/ramen.png",
                      ),
                      FoodTimeWidget(
                        colors: [Color(0xFF3023AE), Color(0xFF10A97E)],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomRight,
                        name: "DINNER",
                        count: 358,
                        assetPath: "assets/images/ramen.png",
                      ),
                    ],
                  ),
                ),
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

  FoodTimeWidget(
      {this.colors,
      this.name,
      this.count,
      this.assetPath,
      this.begin,
      this.end});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 175,
      margin: EdgeInsets.only(right: 20),
      decoration: BoxDecoration(
        gradient:
            LinearGradient(colors: colors, begin: this.begin, end: this.end),
        borderRadius: BorderRadius.all(
          Radius.circular(30),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(this.assetPath),
          Text(
            this.name,
            style: TextStyle(letterSpacing: 1.5, fontSize: 16),
          ),
          Text(
            "$count+",
            style: TextStyle(fontSize: 40),
          ),
          Text("DIFETENTS\nRECIPES"),
        ],
      ),
    );
  }
}
