import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'New folder/change_password.dart';

class Verfication_page extends StatelessWidget {
  const Verfication_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.arrow_back_ios_new,
                      size: 18,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Verification",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Enter The Code",
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
                  "Enter The 6-digit code send to:",
                  style: TextStyle(
                      color: Colors.grey, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 3,
                ),
                Text(
                  "+923234899234",
                  style: TextStyle(
                      color: Colors.grey, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                // Verification-Code Container row
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(width: 1, color: Colors.black)),
                      child: TextFormField(
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                        ],
                        onChanged: (v) {
                          if (v.length == 1) {
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(left: 18),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    Container(
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(width: 1, color: Colors.black)),
                      child: TextFormField(
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                        ],
                        onChanged: (v) {
                          if (v.length == 1) {
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(left: 18),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    Container(
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(width: 1, color: Colors.black)),
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                        ],
                        onChanged: (v) {
                          if (v.length == 1) {
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(left: 18),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    Container(
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(width: 1, color: Colors.black)),
                      child: TextFormField(
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                        ],
                        onChanged: (v) {
                          if (v.length == 1) {
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(left: 18),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    Container(
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(width: 1, color: Colors.black)),
                      child: TextFormField(
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                        ],
                        keyboardType: TextInputType.number,
                        onChanged: (v) {
                          if (v.length == 1) {
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(left: 18),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    Container(
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(width: 1, color: Colors.black)),
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                        ],
                        onChanged: (v) {
                          if (v.length == 1) {
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(left: 18),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ],
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
                // Last Text Row
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Code Send in 0.29"),
                    Text(
                      "Resend code",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
