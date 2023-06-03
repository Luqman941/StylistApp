import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'date_time_page.dart';

class PortfolioPictures extends StatefulWidget {
  const PortfolioPictures({Key? key}) : super(key: key);

  @override
  State<PortfolioPictures> createState() => _PortfolioPicturesState();
}

class _PortfolioPicturesState extends State<PortfolioPictures> {
  List items = [
    'assets/favoriteSalon.png',
    'assets/favoriteSalon.png',
    'assets/favoriteSalon.png',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              GridView.builder(
                  shrinkWrap: true,
                  //physics: NeverScrollableScrollPhysics(),
                  physics: const BouncingScrollPhysics(),
                  padding: const EdgeInsets.all(10),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10),
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    return Image.asset(
                      items[index],
                      height: 100,
                      width: 100,
                      fit: BoxFit.fill,
                    );
                  }),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: () => Get.to(() => const DateTimePage()),
                child: const Text(
                  "Book Now",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 20),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
