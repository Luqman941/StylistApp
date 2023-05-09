import 'package:flutter/material.dart';
import 'package:untitled6/views/auth/log_in.dart';
import 'package:untitled6/views/auth/sign_up.dart';


class AuthPage extends StatefulWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  bool isLogin = true;

  @override
  Widget build(BuildContext context) => isLogin
      ? Log_in(onClickedSignUp: toggle)
      : Sign_up(onClickedSignIn: toggle);

  void toggle() => setState(() => isLogin = !isLogin);
}
