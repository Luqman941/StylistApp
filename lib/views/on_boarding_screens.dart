import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:untitled6/views/page_1.dart';
import 'package:untitled6/views/page_2.dart';
import 'package:untitled6/views/page_3.dart';

import 'auth/log_in.dart';
import 'welcome_page.dart';

class OnBoardingScreen extends StatelessWidget {
  // FrontPage({Key? key}) : super(key: key);
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            //scrollDirection: Axis.vertical,
            children: [
              page_1(
                skipOntapped: () {
                  _controller.jumpToPage(2);
                },
                onTapped: () {
                  _controller.nextPage(
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeIn);
                },
              ),
              page_2(
                onTapped: () {
                  _controller.nextPage(
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeIn);
                },
              ),
              page_3(
                onTapped: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const WelcomePage()));
                },
              ),
            ],
          ),
          Container(
              alignment: Alignment(-0.8, 0.90),
              child: SmoothPageIndicator(
                  effect: WormEffect(
                    dotColor: Colors.grey.shade300,
                    activeDotColor: Colors.grey,
                  ),
                  controller: _controller,
                  count: 3)),
        ],
      ),
    );
  }
}
