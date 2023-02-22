import 'package:flutter/material.dart';
import 'package:untitled6/sign_in.dart';
import 'package:untitled6/verification.dart';

import 'New folder/widgets/platform_boxes.dart';

class Sign_up extends StatefulWidget {
  Sign_up({Key? key}) : super(key: key);

  @override
  State<Sign_up> createState() => _Sign_upState();
}

class _Sign_upState extends State<Sign_up> {
  bool isObsecure = true;

  TextEditingController _fncontroller = TextEditingController();
  TextEditingController _emailcontroller = TextEditingController();
  TextEditingController _phonenocontroller = TextEditingController();
  TextEditingController _pwdcontroller = TextEditingController();

  final _formkey = GlobalKey<FormState>();

  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Form(
              key: _formkey,
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
                        'Sign Up',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Text(
                    "Create an Account",
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        wordSpacing: 1,
                        letterSpacing: 1),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 9.0),
                    child: Text(
                      "Sign in now to being an amazing journey",
                      style: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextFormField(
                    controller: _fncontroller,
                    validator: (fn) =>
                        fn!.isEmpty ? "Please Enter Your Name" : null,
                    decoration: InputDecoration(
                      // hintText:"Email",
                      labelText: "Full Name",
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
                        borderSide:
                            BorderSide(width: 2, color: Colors.redAccent),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: _emailcontroller,
                    validator: (email) =>
                        email!.isEmpty ? "Please Enter Your Email" : null,
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
                        borderSide:
                            BorderSide(width: 2, color: Colors.redAccent),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    controller: _phonenocontroller,
                    validator: (num) =>
                        num!.isEmpty ? "Please Enter Your Number" : null,
                    decoration: InputDecoration(
                      // hintText:"Email",
                      labelText: "Phone Number",
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
                        borderSide:
                            BorderSide(width: 2, color: Colors.redAccent),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    validator: (pwd) =>
                        pwd!.isEmpty ? "Please Enter Your Password" : null,
                    obscureText: isObsecure,
                    decoration: InputDecoration(
                      // hintText:"Email",
                      labelText: "Password",
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
                        borderSide:
                            BorderSide(width: 2, color: Colors.redAccent),
                      ),
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            isObsecure = !isObsecure;
                          });
                        },
                        icon: Icon(
                          isObsecure
                              ? Icons.visibility_off_outlined
                              : Icons.visibility,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
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
                        if (_formkey.currentState!.validate()) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Verfication_page()));
                        }
                      },
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 17),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Have an Account?",
                        style: TextStyle(color: Colors.grey),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Sign_in(),
                              ));
                        },
                        child: Text(
                          "Sign In",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Container(
                          height: 1,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Or ",
                        style: TextStyle(color: Colors.grey),
                      ),
                      Text(
                        "Sign in with",
                        style: TextStyle(color: Colors.black),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Expanded(
                        child: Container(
                          height: 1,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: PlatformBoxes(
                          isBorder: true,
                          imagePath: 'assets/google.png',
                        ),
                      ),
                    ],
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
