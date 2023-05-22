import 'package:flutter/material.dart';

class Saloon_image_2 extends StatelessWidget {
  const Saloon_image_2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image(
      image: AssetImage("assets/pic2.jpeg"),
      fit: BoxFit.cover,
    );
  }
}
