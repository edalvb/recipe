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
                Row(
                  children: [
                    FoodTimeWidget(colors: [Color(0xFFFF114E), Color(0xFFFF6D1B)]),
                    FoodTimeWidget(colors: [Color(0xFF3023AE), Color(0xFFC86DD7)]),
                    FoodTimeWidget(colors: [Color(0xFF10A97E), Color(0xFF10A97E)]),
                  ],
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

  FoodTimeWidget({this.colors});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 175,
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: colors),
        borderRadius: BorderRadius.all(
          Radius.circular(30),
        ),
      ),
    );
  }
}
