import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:untitled6/views/page_1.dart';
import 'package:untitled6/views/page_2.dart';
import 'package:untitled6/views/page_3.dart';

import 'auth/log_in.dart';
import 'welcome_page.dart';

class OnBoardingScreen extends StatelessWidget {
  OnBoardingScreen({super.key});

  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            children: [
              Page1(
                skipOnTapped: () {
                  _controller.jumpToPage(2);
                },
                onTapped: () {
                  _controller.nextPage(
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeIn);
                },
              ),
              Page2(
                onTapped: () {
                  _controller.nextPage(
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeIn);
                },
              ),
              Page3(
                onTapped: () {
                  Get.to(() => const WelcomePage());
                },
              ),
            ],
          ),
          Container(
            alignment: const Alignment(-0.8, 0.90),
            child: SmoothPageIndicator(
                effect: WormEffect(
                  dotColor: Colors.grey.shade300,
                  activeDotColor: Colors.grey,
                ),
                controller: _controller,
                count: 3),
          ),
        ],
      ),
    );
  }
}
