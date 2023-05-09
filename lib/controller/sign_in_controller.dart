import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:untitled6/views/auth/verify_Email.dart';

import '../views/auth/auth_page.dart';


class SignInController extends StatelessWidget {

  @override
  Widget build(BuildContext context) => Scaffold(
    body: StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot){
        if(snapshot.connectionState == ConnectionState.waiting){
          return const Center(child: CircularProgressIndicator(),);
        }
        else if(snapshot.hasError){
          return const Center(child: Text('Something went wrong!'));
        }
        else if(snapshot.hasData){
          return const VerifyEmailPage();
        }
        else{
          return const AuthPage();
        }
      },
    ),
  );
}
