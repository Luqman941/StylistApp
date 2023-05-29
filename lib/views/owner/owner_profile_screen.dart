import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled6/models/profile_screen.dart';

import '../../controller/authentication_repository/AuthenticationRepository.dart';
import '../about_us.dart';
import '../auth/forgot_password.dart';
import '../notification_page.dart';
import '../privacy_policy.dart';
import '../welcome_screen.dart';
import '4_owner_profile.dart';
import 'add_services.dart';
import 'customer_appointments.dart';

class OwnerProfilePage extends StatelessWidget {
  OwnerProfilePage({Key? key}) : super(key: key);

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
                const SizedBox(
                  height: 20
                ),
                Row(
                  children: [
                    Row(
                      children: const [
                        Icon(
                          Icons.arrow_back_ios_new,
                          size: 20,
                        ),
                      ],
                    ),
                    TextButton(
                        onPressed: () => Get.back(),
                        child: const Text(
                          "Profile",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),),
                  ],
                ),
                const SizedBox(
                  height: 25
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
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xffE0C3F6),
                                ),
                                child: const Icon(
                                  Icons.camera_alt_outlined,
                                  size: 19,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 7
                      ),
                      Text(
                        "Fayaz Khan",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ),
                      const SizedBox(height: 7),
                      Text(
                        user.email!, //Email from firebase
                        style: const TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                            fontSize: 14),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12.0),
                  child: Container(
                    height: 500,
                    width: double.infinity,
                    child: ListView.builder(
                      physics: const BouncingScrollPhysics(),
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
                          const SizedBox(width: 10),
                          Text(
                            model[index].myText,
                            style: const TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          const Spacer(),
                          IconButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => model[index].myClass,
                                  ));

                              if (model[index].myText == "Log Out") {
                                AuthenticationRepository.instance.logout();
                                // FirebaseAuth.instance.signOut();
                              }
                            },
                            icon: const Icon(
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
        myClass: const OwnerProfile(),
        myText: "My Profile",
        icon: const Icon(
          Icons.person,
          color: Colors.black,
        ),
        color: const Color(0xff61C0BF)),
    ProfileScreen(
        myClass: const CustomerAppointments(),
        myText: "Appointment details",
        icon: const Icon(
          Icons.wallet_outlined,
          color: Colors.black,
        ),
        color: const Color(0xffE0C3F6)),
    ProfileScreen(
        myClass: const add_services(),
        myText: "Add Services",
        icon: const Icon(
          Icons.bookmark_border,
          color: Colors.black,
        ),
        color: const Color(0xffFCC5B3)),
    ProfileScreen(
        myClass: const NotificationPage(),
        myText: "Notifications",
        icon: const Icon(
          Icons.notifications_outlined,
          color: Colors.black,
        ),
        color: const Color(0xffE0C3F6)),
    ProfileScreen(
        myClass: const ForgotPassword(),
        myText: "Change Password",
        icon: const Icon(
          Icons.lock_outline_sharp,
          color: Colors.black,
        ),
        color: const Color(0xffFCC5B3)),
    ProfileScreen(
        myClass: const PrivacyPolicy(),
        myText: "Privacy Policy",
        icon: const Icon(
          Icons.privacy_tip_outlined,
          color: Colors.black,
        ),
        color: const Color(0xff61C0BF)),
    ProfileScreen(
        myClass: const AboutUs(),
        myText: "About Us",
        icon: const Icon(
          Icons.info_outline_rounded,
          color: Colors.black,
        ),
        color: const Color(0xffE0C3F6)),
    ProfileScreen(
        myClass: const WelcomeScreen(),
        myText: "Log Out",
        icon: const Icon(
          Icons.login,
          color: Colors.redAccent,
        ),
        color: const Color(0xffFCC5B3)),
  ];
}
