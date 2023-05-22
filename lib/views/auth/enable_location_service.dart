import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled6/views/auth/your_location.dart';
import '../../../reusable_widgets/saloon_page_images_container/bottom_navigation_bar.dart';
import '../../constants/image_string.dart';
import '../../utils/text_widget.dart';

class EnableLocationService extends StatelessWidget {
  const EnableLocationService({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(tLoactionIcon),
                  const SizedBox(height: 40),
                  const Text(
                    "Enable Location Services",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                  const SizedBox(height: 15),
                  const TextWidget(
                    text: "Turn on Location Services so we can show",
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                  const SizedBox(height: 5),
                  const TextWidget(
                    text: "you whats nearby",
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                  const SizedBox(height: 100),
                  GestureDetector(
                    onTap: () {
                      Get.to(const Bottom());
                    },
                    child: Container(
                      height: 50,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: const Color(0xff61C0BF),
                          border: Border.all(width: 2, color: Colors.black)),
                      child: const Center(
                          child: TextWidget(
                        text: "Allow Location Access",
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 15,
                      )),
                    ),
                  ),
                  const SizedBox(height: 30),
                  GestureDetector(
                    onTap: () {
                      Get.to(const YourLocation());
                    },
                    child: Container(
                      height: 50,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: const Color(0xff61C0BF),
                          border: Border.all(width: 2, color: Colors.black)),
                      child: const Center(
                          child: TextWidget(
                        text: "Enter Location",
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 15,
                      )),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
