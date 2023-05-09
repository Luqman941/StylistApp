import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../controller/sign_in_controller.dart';
import 'about_us.dart';
import 'auth/forgot_password.dart';
import 'customer/1_My_appointments.dart';
import 'customer/favorite_salons.dart';
import 'notification_page.dart';
import 'privacy_policy.dart';
import 'my_profile.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('Luqman Khan', style: TextStyle(fontSize: 24, color: Colors.white),),
            accountEmail: Text('abc@gmail.com', style: TextStyle(fontSize: 16, color: Colors.white)),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.asset(
                  'assets/style3.png',
                  width: 90,
                  height: 90,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            decoration: BoxDecoration(
                color: Colors.blue.shade700,
                image: const DecorationImage(
                  image: AssetImage("assets/tree.jpg"),
                  fit: BoxFit.cover,
                )),
          ),


          ListTile(
            leading: const Icon(Icons.favorite),
            title: const Text('Favorite Salons'),
            onTap: () {
              //Close navigation drawer before
              Navigator.pop(context);

              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const FavoriteSalon(),
              ));
            },
          ),
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text('My Profile'),
            onTap: () {
              Navigator.pop(context);

              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const MyProfile(),
              ));
            },
          ),
          ListTile(
            leading: const Icon(Icons.bookmark_border),
            title: const Text('My Appointments'),
            onTap: () {
              Navigator.pop(context);

              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const MyAppointments(),
              ));
            },
          ),
          ListTile(
            leading: const Icon(Icons.notifications_outlined),
            title: const Text('Notifications'),
            onTap: () {
              Navigator.pop(context);

              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const NotificationPage(),
              ));
            },
            trailing: ClipOval(
              child: Container(
                color: Colors.red,
                width: 20,
                height: 20,
                child: Center(
                  child: Text('4',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      )),
                ),
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.lock_outline_sharp),
            title: const Text('Change Password'),
            onTap: () {
              Navigator.pop(context);

              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const ForgotPassword(),
              ));
            },
          ),
          const Divider(color: Colors.black54,),
          ListTile(
            leading: const Icon(Icons.privacy_tip_outlined),
            title: const Text('Privacy Policy'),
            onTap: () {
              Navigator.pop(context);

              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const PrivacyPolicy(),
              ));
            },
          ),
          ListTile(
            leading: const Icon(Icons.info_outline_rounded),
            title: const Text('About Us'),
            onTap: () {
              Navigator.pop(context);

              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const AboutUs(),
              ));
            },
          ),
          const Divider(color: Colors.black54,),
          ListTile(
            leading: const Icon(Icons.login),
            title: const Text('Log Out'),
            onTap: () {

              FirebaseAuth.instance.signOut();

              Navigator.pop(context);
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SignInController(),
                  ));
            },
          ),
        ],
      ),
    );
  }
}
