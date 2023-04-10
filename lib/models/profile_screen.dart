import 'package:flutter/material.dart';

class ProfileScreen {
  final String my;
  final Icon icon;
  final Color color;
  final Widget? myClass;

  ProfileScreen(
      {required this.my,
      required this.icon,
      required this.color,
      this.myClass});
}
