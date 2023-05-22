import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled6/views/auth/log_in.dart';

import 'package:firebase_core/firebase_core.dart';

import '../utils/text_widget.dart';
import 'auth/sign_up.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
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
                  'Register as an Owner',
                  style: TextStyle(fontSize: 20),
                ),
                onPressed: () {},
              ),
              const SizedBox(height: 30),

              ElevatedButton(
                // Style property is defined in Elevated button theme class
                child: const Text(
                  'Register as a Customer',
                  style: TextStyle(fontSize: 20),
                ),
                onPressed: () {
                  // Get.to(() => Sign_up());
                  Get.to(() => Sign_up(onClickedSignIn: toggle));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
