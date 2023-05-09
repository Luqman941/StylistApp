import 'package:flutter/material.dart';

class TTextTheme {

  static TextTheme lightTextTheme = TextTheme(
    headline4: TextStyle(
      color: Colors.black,
      fontSize: 25,
      fontWeight: FontWeight.bold),
  );

  static TextTheme darkTextTheme = TextTheme(
    headline4: TextStyle(
        color: Colors.white,
        fontSize: 25,
        fontWeight: FontWeight.bold),
  );
}
