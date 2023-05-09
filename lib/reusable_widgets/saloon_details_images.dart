import 'package:flutter/material.dart';
import 'saloon_page_images_container/saloon_image_1.dart';
import 'saloon_page_images_container/saloon_image_2.dart';
import 'saloon_page_images_container/saloon_image_3.dart';

class Saloon_details_images extends StatelessWidget {
//  const Saloon_details_images({Key? key}) : super(key: key);
  //final AssetImage image;

  //const Saloon_details_images({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Stack(
            alignment: AlignmentDirectional.bottomCenter,
            children: [
              Container(
                height: 310,
                width: double.infinity,
                child: PageView(
                  physics: BouncingScrollPhysics(),
                  children: [
                    Saloon_image_1(),
                    Saloon_image_2(),
                    Saloon_image_3(),
                  ],
                ),
              ),
              Container(
                height: 30,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(40),
                        topLeft: Radius.circular(40))),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
