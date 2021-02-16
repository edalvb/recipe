import 'package:flutter/material.dart';

class BreackfastPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xFFFF114E),
                  Color(0xFFFF6D1B),
                ],
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
              ),
            ),
          ),
          Container(
            height: 350,
            width: 225,
            decoration: BoxDecoration(
              color: Color(0xFFE2203D),
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(60),
              ),
            ),
          ),
          Container(
            height: 85,
            width: 70,
            decoration: BoxDecoration(
              color: Color(0xFFB51930),
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(40),
              ),
            ),
          ),
          AppBar(
            title: RichText(
              text: TextSpan(children: [
                TextSpan(text: "Your Customised\n"),
                TextSpan(
                  text: "BREACKFAST",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                )
              ]),
            ),
            actions: [
              BorderButton(
                text: "Filter",
                onTap: () {},
              )
            ],
          )
        ],
      ),
    );
  }
}

class BorderButton extends StatelessWidget {
  String text;
  VoidCallback onTap;

  BorderButton({this.text, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 15,
        bottom: 15,
        right: 10,
      ),
      child: OutlineButton(
        onPressed: onTap,
        textColor: Colors.white,
        borderSide: BorderSide(color: Colors.white, width: 1),
        highlightedBorderColor: Colors.black,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        child: Text(
          this.text.toUpperCase(),
          style: TextStyle(fontWeight: FontWeight.bold, letterSpacing: 1.5),
        ),
      ),
    );
  }
}
