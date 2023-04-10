import 'package:flutter/material.dart';

import 'sign_in.dart';
import 'change_password.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Sign_in(),
                          ));
                    },
                    child: Icon(
                      Icons.arrow_back_ios_new,
                      size: 18,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Forget Password",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Reset Password",
                style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    wordSpacing: 1,
                    letterSpacing: 1),
              ),
              SizedBox(
                height: 6,
              ),
              Text(
                "Enter The Email then Send You",
                style:
                    TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 3,
              ),
              Text(
                "Password",
                style:
                    TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 40,
              ),
              TextField(
                decoration: InputDecoration(
                  // hintText:"Email",
                  labelText: "Email",
                  labelStyle: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(width: 2, color: Colors.black),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(width: 2, color: Colors.black),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(width: 2, color: Colors.black),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(width: 2, color: Colors.redAccent),
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                height: 55,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(28),
                    color: Color(0xff4D9DD0),
                    border: Border.all(width: 2, color: Colors.black)),
                child: TextButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => ChangePassword(),
                      ),
                    );
                  },
                  child: Text(
                    "Continue",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
