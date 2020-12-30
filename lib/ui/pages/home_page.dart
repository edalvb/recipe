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
          )
        ],
      ),
    );
  }
}
