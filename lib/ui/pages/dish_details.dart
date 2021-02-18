import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DishDetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Stack(
        children: <Widget>[
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color(0xffFF114E), Color(0xffFF6D1B)],
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft),
            ),
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
            ),
          ),

          Transform.translate(
            offset: Offset(0, -80),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Image.asset("assets/images/Recipe-01.png"),
                Transform.translate(
                  offset: Offset(0, -25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
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
                        padding: const EdgeInsets.only(right: 40),
                        child: RaisedButton(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          child: Text("READ MORE"),
                          onPressed: () {

                            _showReadMore(context);

                          },
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: SizedBox(
                    width: 200,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Text(
                          "FRENCH TOAST",
                          style: TextStyle(letterSpacing: 2, fontSize: 25),
                        ),
                        Text(
                          "In a small bowl, combine, cinnamon, nutmeg and sugar and set aside briefly.",
                          style: TextStyle(fontWeight: FontWeight.w300),
                        )
                      ],
                    ),
                  ),
                ),



              ],
            ),
          ),
          //,
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(left: 20, bottom: 50),
              child: Row(
                children: <Widget>[
                  Image.asset("assets/images/fire.png"),
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
                  Image.asset("assets/images/time.png", height: 25,),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(child: Text("10 min"))
                ],
              ),
            ),
          )

        ],
      ),
    );
  }

  void _showReadMore(BuildContext context) {
    Navigator.pushNamed(context, "/dish_details_more_page");
  }
}
