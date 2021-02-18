import 'package:flutter/material.dart';

class DishDetailsMorePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        actions: [PlayWidget(() {})],
      ),
      body: DefaultTextStyle(
        style: TextStyle(color: Colors.black),
        child: Padding(
          padding: const EdgeInsets.only(left: 30),
          child: ListView(
            children: [
              Padding(
                  padding: const EdgeInsets.only(right: 200),
                  child: Text(
                    "FRENCH TOAST",
                    style: TextStyle(fontSize: 30),
                  )),
              Padding(
                padding: const EdgeInsets.only(right: 130),
                child: Text(
                    "In a small bowl, combine, cinnamon, nutget and sugar and set aside briefly"),
              ),
              SizedBox(height: 20),
              Align(
                alignment: Alignment.bottomCenter,
                child: Row(
                  children: <Widget>[
                    Image.asset("assets/images/fire-1.png"),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(child: Text("65%")),
                    Container(
                      height: 40,
                      width: 1,
                      color: Color(0xffD8D8D8),
                      margin: EdgeInsets.only(left: 15, right: 15),
                    ),
                    Expanded(child: Text("Vegeratarian")),
                    Container(
                      height: 40,
                      width: 1,
                      color: Color(0xffD8D8D8),
                      margin: EdgeInsets.only(left: 15, right: 15),
                    ),
                    Image.asset(
                      "assets/images/time_black.png",
                      height: 25,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(child: Text("10 min"))
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

class PlayWidget extends StatelessWidget {
  final VoidCallback onTap;
  PlayWidget(this.onTap);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: this.onTap,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            "assets/images/listen2.png",
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              "Watch Recipe",
              style: TextStyle(
                color: Color(0xFF77797C),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
