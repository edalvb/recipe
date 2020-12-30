import 'package:flutter/material.dart';
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
      ),
      title: "App de Recetas",
      initialRoute: "/",
      routes: {"/": (context) => HomePage()},
    );
  }
}
