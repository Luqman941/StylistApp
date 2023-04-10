import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:untitled6/views/customer/profile_page.dart';

import 'auth/sign_in.dart';
import 'customer/edit_cust_profile.dart';

class ProfileDetails extends StatefulWidget {
  const ProfileDetails({Key? key}) : super(key: key);

  @override
  State<ProfileDetails> createState() => _ProfileDetailsState();
}

class _ProfileDetailsState extends State<ProfileDetails> {
  var _value = '-1';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: GestureDetector(
            onTap: () {},
            child: const Icon(
              Icons.arrow_back_ios_new,
              color: Colors.black,
            )),
        title: const Text(
          "Profile",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.edit,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => EditCustProfile(),
                ),
              );
            },
          )
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 40),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Center(
                  child: Column(
                    children: [
                      Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(width: 2, color: Colors.black),
                          image: DecorationImage(
                              image: AssetImage("assets/front_pic.jpeg"),
                              fit: BoxFit.cover),
                        ),
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      const Text(
                        "Afaq Ahmad",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      const Text(
                        "AfaqAhmad@gmail.com",
                        style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                            fontSize: 11),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 35,
                ),
                // Full Name
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "Full Name",
                    labelStyle: TextStyle(color: Colors.black),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(width: 2, color: Colors.black)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(width: 2, color: Colors.black)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(width: 2, color: Colors.black)),
                    errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(width: 2, color: Colors.red)),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                // Email
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "Email",
                    labelStyle: TextStyle(color: Colors.black),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(width: 2, color: Colors.black)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(width: 2, color: Colors.black)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(width: 2, color: Colors.black)),
                    errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(width: 2, color: Colors.red)),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                // Phone Number
                IntlPhoneField(
                  showCountryFlag: false,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                  disableLengthCheck: true,
                ),
                SizedBox(
                  height: 20,
                ),
                // Gender
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: DropdownButtonFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(width: 2, color: Colors.black),
                    )),
                    value: _value,
                    items: const [
                      DropdownMenuItem(
                        child: Text('Select Gender'),
                        value: '-1',
                      ),
                      DropdownMenuItem(
                        child: Text('Female'),
                        value: '1',
                      ),
                      DropdownMenuItem(
                        child: Text('Male'),
                        value: '2',
                      ),
                    ],
                    onChanged: (v) {},
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
