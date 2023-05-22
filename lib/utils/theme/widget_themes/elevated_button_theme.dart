import 'package:flutter/material.dart';

// ------ Light & Dark Elevated button theme
class TElevatedButtonTheme {
  TElevatedButtonTheme._(); // To avoid creating instance

  // ------ Light theme
  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      minimumSize: const Size.fromHeight(50),
      backgroundColor: const Color(0xff4D9DD0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
        side: const BorderSide(width: 2, color: Colors.black),
      ),
    ),
  );

  // ------ Dark theme
  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      minimumSize: const Size.fromHeight(50),
      backgroundColor: const Color(0xff4D9DD0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
        side: const BorderSide(width: 2, color: Colors.white),
      ),
    ),
  );
}
