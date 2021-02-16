import 'package:flutter/material.dart';
import 'package:recipe/ui/components/border_button.dart';

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
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 90, left: 16, right: 16, bottom: 55),
            child: ListView(
              children: [
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(left: 7),
                  child: Text("MY FAVORITES"),
                ),
                SizedBox(height: 10),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FavoriteWidget( text: "FRENCH TOAST", assetPath: "assets/images/favorites/favorite1.png"),
                      FavoriteWidget( text: "OATMEJAL", assetPath: "assets/images/favorites/Bitmap-9.png"),
                      FavoriteWidget( text: "FRENCH TOAST", assetPath: "assets/images/favorites/Bitmap-4.png"),
                      FavoriteWidget( text: "FRENCH TOAST", assetPath: "assets/images/favorites/Bitmap-3.png"),
                      FavoriteWidget( text: "FRENCH TOAST", assetPath: "assets/images/favorites/favorite1.png"),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class FavoriteWidget extends StatelessWidget {
  String assetPath;
  String text;

  FavoriteWidget({this.assetPath, this.text});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: SizedBox(
        width: 110,
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(assetPath, height: 120),
            ),
            SizedBox(height: 5),
            Text(
              text,
              textAlign: TextAlign.center,
              style: TextStyle(letterSpacing: 1.5, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
