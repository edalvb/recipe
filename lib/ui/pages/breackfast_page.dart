import 'package:flutter/material.dart';
import 'package:recipe/ui/components/border_button.dart';

class BreackfastPage extends StatefulWidget {
  @override
  _BreackfastPageState createState() => _BreackfastPageState();
}

class _BreackfastPageState extends State<BreackfastPage> {
  String searchWord = "";
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
                      FavoriteWidget(
                        text: "FRENCH TOAST",
                        assetPath: "assets/images/favorites/favorite1.png",
                        onTap: () {
                          _showDishDetails(context);
                        },
                      ),
                      FavoriteWidget(
                          text: "OATMEJAL",
                          assetPath: "assets/images/favorites/Bitmap-9.png"),
                      FavoriteWidget(
                          text: "FRENCH TOAST",
                          assetPath: "assets/images/favorites/Bitmap-4.png"),
                      FavoriteWidget(
                          text: "FRENCH TOAST",
                          assetPath: "assets/images/favorites/Bitmap-3.png"),
                      FavoriteWidget(
                          text: "FRENCH TOAST",
                          assetPath: "assets/images/favorites/favorite1.png"),
                    ],
                  ),
                ),
                SizedBox(height: 30),
                GridView.count(
                  crossAxisCount: 3,
                  shrinkWrap: true,
                  childAspectRatio: 9 / 16,
                  physics: ClampingScrollPhysics(),
                  children: [
                    FavoriteWidget(
                      text: "FRUIT SALAD",
                      assetPath: "assets/images/favorites/Bitmap-1.png",
                      onTap: () {
                        print("hola");
                      },
                      height: 150,
                      width: 125,
                    ),
                    FavoriteWidget(
                      text: "MOROCCAN CHICKEN SKILLET",
                      assetPath: "assets/images/favorites/Bitmap-2.png",
                      height: 150,
                      width: 125,
                    ),
                    FavoriteWidget(
                      text: "THAI TOM YUM SOUP",
                      assetPath: "assets/images/favorites/Bitmap-10.png",
                      height: 150,
                      width: 125,
                    ),
                    FavoriteWidget(
                      text: "FRUIT SALAD",
                      assetPath: "assets/images/favorites/Bitmap-1.png",
                      onTap: () {
                        print("hola");
                      },
                      height: 150,
                      width: 125,
                    ),
                    FavoriteWidget(
                      text: "MOROCCAN CHICKEN SKILLET",
                      assetPath: "assets/images/favorites/Bitmap-2.png",
                      height: 150,
                      width: 125,
                    ),
                    FavoriteWidget(
                      text: "THAI TOM YUM SOUP",
                      assetPath: "assets/images/favorites/Bitmap-10.png",
                      height: 150,
                      width: 125,
                    ),
                  ],
                )
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: MyButtomSheet(
              defaultValue: this.searchWord,
              searchCallBack: _requestSearch,
            ),
          ),
        ],
      ),
    );
  }

  _requestSearch(String word) {
    print(word);
  }

  void _showDishDetails(BuildContext context) {
    Navigator.pushNamed(context, "/dish_details_page");
  }
}

class FavoriteWidget extends StatelessWidget {
  final String assetPath;
  final String text;
  final VoidCallback onTap;
  final double height;
  final double width;

  FavoriteWidget({
    this.assetPath,
    this.text,
    this.onTap,
    this.height = 125,
    this.width = 110,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: this.onTap,
      child: SizedBox(
        width: this.width,
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(assetPath, height: this.height),
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

typedef SearchCallBack = Function(String word);

class MyButtomSheet extends StatelessWidget {
  TextEditingController searchController;
  final SearchCallBack searchCallBack;

  MyButtomSheet({String defaultValue = "", this.searchCallBack}) {
    searchController = TextEditingController(text: defaultValue);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Padding(
        padding: const EdgeInsets.only(left: 15),
        child: Row(
          children: [
            Expanded(
              child: TextField(
                controller: this.searchController,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                    hintText: "Search your recipe",
                    hintStyle: TextStyle(color: Colors.white70)),
              ),
            ),
            IconButton(
                icon: Icon(
                  Icons.search,
                  color: Colors.white,
                ),
                onPressed: OnSearchPressed)
          ],
        ),
      ),
    );
  }

  void OnSearchPressed() {
    this.searchCallBack(this.searchController.text);
  }
}
