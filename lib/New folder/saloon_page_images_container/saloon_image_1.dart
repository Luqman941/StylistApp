import 'package:flutter/material.dart';

class Saloon_image_1 extends StatelessWidget {
  const Saloon_image_1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image(
      image: AssetImage(
        "assets/pic_three.jpeg",
      ),
      fit: BoxFit.cover,
    );
  }
}
