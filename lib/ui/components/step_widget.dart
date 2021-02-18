import 'package:flutter/material.dart';

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
