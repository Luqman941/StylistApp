import 'package:flutter/material.dart';

class TTextTheme {
  static TextTheme lightTextTheme = const TextTheme(
    headline2: TextStyle(
        color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
    headline4: TextStyle(
        color: Colors.black, fontSize: 28, fontWeight: FontWeight.bold),
    subtitle2: TextStyle(color: Colors.black),
  );

  static TextTheme darkTextTheme = const TextTheme(
    headline2: TextStyle(
        color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
    headline4: TextStyle(
        color: Colors.white, fontSize: 28, fontWeight: FontWeight.bold),
  );


}
