import 'package:flutter/material.dart';
import 'package:recipe/ui/pages/breackfast_page.dart';
import 'package:recipe/ui/pages/dish_details.dart';
import 'package:recipe/ui/pages/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          fontFamily: "Roboto",
          textTheme: TextTheme(
            bodyText2: TextStyle(color: Colors.white),
            headline4: TextStyle(color: Colors.white),
            headline6: TextStyle(color: Colors.white),
          ),
          appBarTheme: AppBarTheme(
              color: Colors.transparent,
              elevation: 0,
              iconTheme: IconThemeData(color: Colors.white))),
      title: "App de Recetas",
      initialRoute: "/",
      routes: {
        "/": (context) => HomePage(),
        "/breackfast_page": (context) => BreackfastPage(),
        "/dish_details_page": (context) => DishDetailsPage(),
      },
    );
  }
}
