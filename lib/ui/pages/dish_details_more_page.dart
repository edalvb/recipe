import 'package:flutter/material.dart';
import 'package:recipe/ui/components/play_widget.dart';
import 'package:recipe/ui/components/step_widget.dart';
import 'package:recipe/ui/components/toast_example.dart';

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
        child: Stack(children: [
          Padding(
            padding: const EdgeInsets.only(left: 30, bottom: 65),
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
              ]..addAll(
                  List.generate(
                    10,
                    (index) => StepWidget(
                      text:
                          "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable.",
                      number: index + 1,
                      heigth: 100,
                    ),
                  ),
                ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              decoration: BoxDecoration(color: Colors.white),
              padding: const EdgeInsets.only(bottom: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ToastExamples("assets/images/favorites/Bitmap-6.png", () {}),
                  ToastExamples("assets/images/favorites/Bitmap-7.png", () {}),
                  ToastExamples("assets/images/favorites/Bitmap-8.png", () {}),
                  ToastExamples("assets/images/favorites/Bitmap-5.png", () {}),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: 49,
                      width: 61,
                      child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.resolveWith(
                                (states) => Colors.grey)),
                        onPressed: () {},
                        child: Icon(Icons.add),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ]),
      ),
    );
  }
}