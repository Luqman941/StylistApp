import 'package:flutter/material.dart';

class Saloon_image_3 extends StatelessWidget {
  const Saloon_image_3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image(
      image: AssetImage("assets/pic_one.jpeg"),
      fit: BoxFit.cover,
    );
  }
}
