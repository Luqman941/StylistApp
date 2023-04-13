import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../views/auth/sign_in.dart';
import '../views/customer/main_page.dart';
import '../views/customer/profile_page.dart';

class SignInController extends StatelessWidget {

  @override
  Widget build(BuildContext context) => Scaffold(
    body: StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot){
        if(snapshot.connectionState == ConnectionState.waiting){
          return Center(child: CircularProgressIndicator(),);
        }
        else if(snapshot.hasError){
          return Center(child: Text('Something went wrong!'));
        }
        else if(snapshot.hasData){
          return ProfilePage();
        }
        else{
          return Sign_in();
        }
      },
    ),
  );
}
