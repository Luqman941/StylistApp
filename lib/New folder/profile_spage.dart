//import 'package:afaq/profile_model/profile_weidgets.dart';
import 'package:flutter/material.dart';

import 'models/profile_weidgets.dart';

class Profile_Screen extends StatelessWidget {
  Profile_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
            child: Column(
              children: [
                SizedBox(
                  height: 25,
                ),
                Center(
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          Container(
                            height: 80,
                            width: 80,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(width: 2, color: Colors.black),
                              image: DecorationImage(
                                  image: AssetImage(
                                      "assets/images/front_pic.jpeg"),
                                  fit: BoxFit.cover),
                            ),
                          ),
                          Positioned(
                            bottom: 2,
                            right: 0,
                            child: GestureDetector(
                              onTap: () {},
                              child: Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xffE0C3F6),
                                ),
                                child: Icon(
                                  Icons.camera_alt_outlined,
                                  size: 19,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Text(
                        "Afaq Ahmad",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Text(
                        "AfaqAhmad@gmail.com",
                        style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                            fontSize: 11),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12.0),
                  child: Container(
                    height: 500,
                    width: double.infinity,
                    child: ListView.builder(
                      physics: BouncingScrollPhysics(),
                      scrollDirection: Axis.vertical,
                      itemCount: Model.length,
                      itemBuilder: (context, index) => Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0),
                            child: Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Model[index].color,
                              ),
                              child: Center(
                                child: Model[index].icon,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            Model[index].my,
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          Spacer(),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.arrow_forward_ios_sharp,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  List<dynamic> Model = [
    ProfileScreen(
        my: "My Profile",
        icon: Icon(
          Icons.person,
          color: Colors.black,
        ),
        color: Color(0xff61C0BF)),
    ProfileScreen(
        my: "Payment Method",
        icon: Icon(
          Icons.wallet_outlined,
          color: Colors.black,
        ),
        color: Color(0xffE0C3F6)),
    ProfileScreen(
        my: "Booking History",
        icon: Icon(
          Icons.bookmark_border,
          color: Colors.black,
        ),
        color: Color(0xffFCC5B3)),
    ProfileScreen(
        my: "Favrite Sallon",
        icon: Icon(
          Icons.favorite_border,
          color: Colors.black,
        ),
        color: Color(0xff61C0BF)),
    ProfileScreen(
        my: "Get Notificaton",
        icon: Icon(
          Icons.notifications_outlined,
          color: Colors.black,
        ),
        color: Color(0xffE0C3F6)),
    ProfileScreen(
        my: "Change Password",
        icon: Icon(
          Icons.lock_outline_sharp,
          color: Colors.black,
        ),
        color: Color(0xffFCC5B3)),
    ProfileScreen(
        my: "Privacy Policy",
        icon: Icon(
          Icons.privacy_tip_outlined,
          color: Colors.black,
        ),
        color: Color(0xff61C0BF)),
    ProfileScreen(
        my: "About Us",
        icon: Icon(
          Icons.info_outline_rounded,
          color: Colors.black,
        ),
        color: Color(0xffE0C3F6)),
    ProfileScreen(
        my: "Log Out",
        icon: Icon(
          Icons.login,
          color: Colors.black,
        ),
        color: Color(0xffFCC5B3)),
  ];
}
