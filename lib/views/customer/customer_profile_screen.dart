import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../controller/authentication_repository/AuthenticationRepository.dart';
import '../../controller/sign_in_controller.dart';
import '../auth/forgot_password.dart';
import '../welcome_screen.dart';
import '1_My_appointments.dart';
import '../about_us.dart';

import 'package:untitled6/views/privacy_policy.dart';
import '4_customer_profile.dart';
import 'favorite_salons.dart';
import 'package:untitled6/models/profile_screen.dart';
import '../notification_page.dart';

class CustomerProfilePage extends StatefulWidget {
  const CustomerProfilePage({Key? key}) : super(key: key);

  @override
  State<CustomerProfilePage> createState() => _CustomerProfilePageState();
}

class _CustomerProfilePageState extends State<CustomerProfilePage> {
  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser!; //Access user from firebase

    return Scaffold(
      // appBar: AppBar(
      //   leading: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back_ios_new),),
      //   title: Text("Profile", style: Theme.of(context).textTheme.headline2,),
      // ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
            child: Column(
              children: [
                const SizedBox(height: 25),
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
                        ],
                      ),
                      const SizedBox(height: 7),
                      Text(
                        "Afaq Ahmad",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
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
        myClass: const CustomerProfile(),
        myText: "My Profile",
        icon: const Icon(
          Icons.person,
          color: Colors.black,
        ),
        color: const Color(0xff61C0BF)),
    ProfileScreen(
        myClass: const MyAppointments(),
        myText: "Appointment details",
        icon: const Icon(
          Icons.bookmark_border,
          color: Colors.black,
        ),
        color: const Color(0xffFCC5B3)),
    ProfileScreen(
        myClass: const FavoriteSalon(),
        myText: "Favorite Saloons",
        icon: const Icon(
          Icons.favorite_border,
          color: Colors.black,
        ),
        color: const Color(0xff61C0BF)),
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
