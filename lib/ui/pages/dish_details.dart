import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DishDetailsPage extends StatelessWidget {
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
                    colors: [Color(0xFFFF114E), Color(0xFFFF6D1B)],
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft)),
          ),
          Positioned(
              bottom: 100,
              child: Container(
                height: 250,
                width: 225,
                decoration: BoxDecoration(
                    color: Color(0xFFE2203D).withOpacity(0.22),
                    borderRadius:
                        BorderRadius.only(bottomRight: Radius.circular(60))),
              )),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset("assets/images/Recipe-01.png"),
              Transform.translate(
                offset: Offset(0, -25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: FloatingActionButton(
                        mini: true,
                        backgroundColor: Colors.white,
                        foregroundColor: Color(0xFFE2203D),
                        child: Icon(
                          FontAwesomeIcons.play,
                          size: 15,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          onPrimary: Colors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                        ),
                        child: Text("READ MORE"),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: SizedBox(
                  width: 200,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text("FRENCH TOAST",
                          style: TextStyle(letterSpacing: 2, fontSize: 25)),
                      Text(
                        "In a small bowl, combine, cinnamon, nutmeg and sugar and set aside briedfly",
                        style: TextStyle(fontWeight: FontWeight.w300),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 50),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset("assets/images/fire.png"),
                        SizedBox(width: 10),
                        Text("65%"),
                      ],
                    ),
                    Container(
                      height: 40,
                      width: 1,
                      color: Color(0xFFD8D8D8),
                    ),
                    Text("Vegetarian"),
                    Container(
                      height: 40,
                      width: 1,
                      color: Color(0xFFD8D8D8),
                    ),
                    Row(
                      children: [
                        Image.asset("assets/images/time.png", height: 25,),
                        SizedBox(width: 10),
                        Text("10 min"),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
          AppBar()
        ],
      ),
    );
  }
}
