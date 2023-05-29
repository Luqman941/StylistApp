import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils/text_widget.dart';
import 'auth/log_in.dart';
import 'auth/sign_up.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    bool isLogin = true;
    void toggle() => setState(() => isLogin = !isLogin);

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 40),
              const TextWidget(
                text: 'Welcome!',
                color: Colors.black,
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
              const SizedBox(height: 240),

              ElevatedButton(
                // Style property is defined in Elevated button theme class
                child: const Text(
                  'LOG IN',
                  style: TextStyle(fontSize: 20),
                ),
                onPressed: () {
                  Get.to(() => Log_in());
                },
              ),
              const SizedBox(height: 30),

              ElevatedButton(
                // Style property is defined in Elevated button theme class
                child: const Text(
                  'SIGN UP',
                  style: TextStyle(fontSize: 20),
                ),
                onPressed: () {
                  Get.to(() => Sign_up());
                  // Get.to(() => Sign_up(onClickedSignIn: toggle));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
