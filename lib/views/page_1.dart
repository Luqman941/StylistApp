import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:untitled6/utils/text_widget.dart';
import '../constants/image_string.dart';
import 'auth/log_in.dart';

class Page1 extends StatelessWidget {
  final VoidCallback onTapped;
  final VoidCallback skipOnTapped;

  const Page1({super.key, required this.onTapped, required this.skipOnTapped});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    style: TextButton.styleFrom(
                        textStyle: const TextStyle(fontSize: 20)),
                    onPressed: () {
                      Get.to(() => const Log_in());
                    },
                    child: const TextWidget(text: 'Skip'),
                  ),
                ],
              ),
              const SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: Center(
                  child: Container(
                    height: 300,
                    width: 300,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(250),
                        bottomRight: Radius.circular(80),
                        topLeft: Radius.circular(80),
                        bottomLeft: Radius.circular(250),
                      ),
                      color: Colors.pink,
                      image: DecorationImage(
                        image: AssetImage(tOnBoardingImage1),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 100),
              Padding(
                padding: const EdgeInsets.only(left: 30.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Explore Barber Shop\nin Your Area",
                        style: Theme.of(context).textTheme.headline4),
                  ],
                ),
              ),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 15.0, bottom: 10),
                    child: Container(
                      height: 40,
                      width: 110,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 1.5),
                          borderRadius: BorderRadius.circular(25),
                          color: const Color(0xff4D9DD0)),
                      child: TextButton(
                        style: TextButton.styleFrom(
                          textStyle: const TextStyle(fontSize: 20),
                        ),
                        onPressed: onTapped,
                        child: const TextWidget(
                          text: 'Next',
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
