import 'package:flutter/material.dart';
import 'package:untitled6/views/auth/log_in.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 40),

              Row(
                children: [
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Welcome!',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 40,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 240),

              Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(28),
                    color: Color(0xff4D9DD0),
                    border: Border.all(width: 2, color: Colors.black)),
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Register as an Owner",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20),
                  ),
                ),
              ),
              const SizedBox(height: 30),

              Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(28),
                    color: Color(0xff4D9DD0),
                    border: Border.all(width: 2, color: Colors.black)),
                child: TextButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => Log_in(),
                      ),
                    );
                  },
                  child: const Text(
                    "Register as a Customer",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20),
                  ),
                ),
              ),
              const SizedBox(height: 110),

            ],
          ),
        ),
      ),
    );
  }
}
