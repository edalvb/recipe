import 'package:flutter/material.dart';
import 'package:recipe/ui/pages/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "App de Recetas",
      initialRoute: "/",
      routes: {
        "/": (context) => HomePage()
      },
    );
  }
}
