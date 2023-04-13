import 'package:flutter/material.dart';

class ProfileScreen {
  final String myText;
  final Icon icon;
  final Color color;
  final Widget? myClass;

  ProfileScreen(
      {required this.myText,
      required this.icon,
      required this.color,
      this.myClass});
}
