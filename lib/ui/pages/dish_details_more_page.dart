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
              StepWidget(
                text:
                    "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable.",
                number: 1,
                heigth: 100,
              )
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

class StepWidget extends StatelessWidget {
  int number;
  String text;
  int heigth;
  StepWidget({this.number, this.text, this.heigth});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                    color: Color(0xffFF4432),
                    borderRadius: BorderRadius.circular(7)),
                padding: EdgeInsets.all(10),
                child: Text(
                  getFormatedNumber(),
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
              CustomPaint(
                painter: LineDashedPainter(heigth),
              )
            ],
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "STEP",
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(text)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  String getFormatedNumber() {
    if (number > 9) {
      return number.toString();
    } else {
      return "0$number";
    }
  }
}

class LineDashedPainter extends CustomPainter {
  final int heigth;

  LineDashedPainter(this.heigth);

  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()..strokeWidth = 1;
    paint.color = Colors.grey;
    var max = heigth;
    var dashWidth = 3;
    var dashSpace = 3;
    double startY = 0;

    while (max >= 0) {
      canvas.drawLine(Offset(0, startY), Offset(0, startY + dashWidth), paint);
      final space = (dashSpace + dashWidth);
      startY += space;
      max -= space;
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
