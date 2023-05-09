import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:untitled6/views/my_profile.dart';

import '../../controller/sign_in_controller.dart';
import '../auth/forgot_password.dart';
import '1_My_appointments.dart';
import '../about_us.dart';

import 'package:untitled6/views/privacy_policy.dart';
import '3_appointment_details.dart';
import 'favorite_salons.dart';
import 'package:untitled6/models/profile_screen.dart';
import '../notification_page.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser!; //Access user from firebase

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
                                  image: AssetImage("assets/front_pic.jpeg"),
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
                        user.email!,  //Email from firebase
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
                      itemCount: model.length,
                      itemBuilder: (context, index) => Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0),
                            child: Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: model[index].color,
                              ),
                              child: Center(
                                child: model[index].icon,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            model[index].myText,
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          Spacer(),
                          IconButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => model[index].myClass,
                                  ));

                              if(model[index].myText == "Log Out"){
                                FirebaseAuth.instance.signOut();
                              }
                            },
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

  List<dynamic> model = [
    ProfileScreen(
        myClass: MyProfile(),
        myText: "My Profile",
        icon: Icon(
          Icons.person,
          color: Colors.black,
        ),
        color: Color(0xff61C0BF)),
    ProfileScreen(
        myClass: MyAppointments(),
        myText: "Appointment details",
        icon: Icon(
          Icons.bookmark_border,
          color: Colors.black,
        ),
        color: Color(0xffFCC5B3)),
    ProfileScreen(
        myClass: FavoriteSalon(),
        myText: "Favorite Saloons",
        icon: Icon(
          Icons.favorite_border,
          color: Colors.black,
        ),
        color: Color(0xff61C0BF)),
    ProfileScreen(
        myClass: NotificationPage(),
        myText: "Notificatons",
        icon: Icon(
          Icons.notifications_outlined,
          color: Colors.black,
        ),
        color: Color(0xffE0C3F6)),
    ProfileScreen(
        myClass: ForgotPassword(),
        myText: "Change Password",
        icon: Icon(
          Icons.lock_outline_sharp,
          color: Colors.black,
        ),
        color: Color(0xffFCC5B3)),
    ProfileScreen(
        myClass: PrivacyPolicy(),
        myText: "Privacy Policy",
        icon: Icon(
          Icons.privacy_tip_outlined,
          color: Colors.black,
        ),
        color: Color(0xff61C0BF)),
    ProfileScreen(
        myClass: AboutUs(),
        myText: "About Us",
        icon: Icon(
          Icons.info_outline_rounded,
          color: Colors.black,
        ),
        color: Color(0xffE0C3F6)),
    ProfileScreen(
        myClass: SignInController(),
        myText: "Log Out",
        icon: Icon(
          Icons.login,
          color: Colors.black,
        ),
        color: Color(0xffFCC5B3)
   ),
  ];
}
