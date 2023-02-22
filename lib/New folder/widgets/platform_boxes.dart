import 'package:flutter/material.dart';

class PlatformBoxes extends StatelessWidget {
  final String imagePath;
  final bool isBorder;

  const PlatformBoxes({super.key, required this.imagePath,required this.isBorder});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
        height:isBorder? 40:50,
        width: isBorder? 40:50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7),
          border:isBorder? Border.all(width: 1, color: Colors.black):null,
        ),
        child: Image.asset(
          imagePath,),

        );
  }
}
