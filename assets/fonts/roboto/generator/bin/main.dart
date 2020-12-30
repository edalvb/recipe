import 'dart:io';
import 'package:path/path.dart';

main(List<String> args) {
  Directory dir = Directory("..");
  var list = dir.listSync();
  print("\t- family: Montserrat");
  print("\t\tfonts:");
  for (var item in list) {
    if (item.path.contains(".ttf")) {
      final fileName = basename(item.path);
      print("- asset: fonts/roboto/${fileName}");
    }
  }
}
