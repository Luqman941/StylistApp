import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:untitled6/views/auth/sign_up.dart';

import '../../main.dart';
import '../../utils/utils_error.dart';
import 'forgot_password.dart';
import '../customer/main_page.dart';
import '../../utils/platform_boxes.dart';
import 'package:email_validator/email_validator.dart';

class Log_in extends StatefulWidget {
  final VoidCallback? onClickedSignUp;

  const Log_in({
    Key? key,
    this.onClickedSignUp,
  }) : super(key: key);

  @override
  State<Log_in> createState() => _Log_inState();
}

class _Log_inState extends State<Log_in> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool isObsecure = true;

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            padding: EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 20),
                    Padding(
                      padding: EdgeInsets.only(left: 9.0),
                      child: Text(
                        "Sign In",
                        style: Theme.of(context).textTheme.headline4,
                        // style: TextStyle(
                        //     color: Colors.black,
                        //     fontSize: 25,
                        //     fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Padding(
                      padding: EdgeInsets.only(left: 9.0),
                      child: Text(
                        "Welcome Back",
                        style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            wordSpacing: 1,
                            letterSpacing: 1),
                      ),
                    ),
                    const SizedBox(height: 3),
                    const Padding(
                      padding: EdgeInsets.only(left: 9.0),
                      child: Text(
                        "Sign in now to begin an amazing journey",
                        style: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(height: 60),
                    TextField(
                      controller: emailController,
                      cursorColor: Colors.white,
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        labelText: "Email",
                        labelStyle: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(width: 2, color: Colors.black),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(width: 2, color: Colors.black),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(width: 2, color: Colors.black),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide:
                              BorderSide(width: 2, color: Colors.redAccent),
                        ),
                      ),
                    ),
                    const SizedBox(height: 30),

                    TextField(
                      controller: passwordController,
                      textInputAction: TextInputAction.done,
                      obscureText: isObsecure,
                      decoration: InputDecoration(
                        labelText: "Password",
                        labelStyle: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(width: 2, color: Colors.black),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(width: 2, color: Colors.black),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(width: 2, color: Colors.black),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide:
                              BorderSide(width: 2, color: Colors.redAccent),
                        ),
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              isObsecure = !isObsecure;
                            });
                          },
                          icon: Icon(
                            isObsecure
                                ? Icons.visibility_off_outlined
                                : Icons.visibility,
                            color: Colors.black,
                          ),
                        ),
                      ),

                      //obscureText: true,
                    ),
                    const SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 9.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          GestureDetector(
                            child: Text(
                              "Forgot Password?",
                              style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  fontWeight: FontWeight.bold,
                                  color:
                                      Theme.of(context).colorScheme.secondary),
                            ),
                            onTap: () =>
                                Navigator.of(context).push(MaterialPageRoute(
                              builder: (cotext) => ForgotPassword(),
                            )),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton.icon(
                      // style: ElevatedButton.styleFrom(
                      //   minimumSize: Size.fromHeight(50),
                      // ),
                      style: ElevatedButton.styleFrom(
                          minimumSize: Size.fromHeight(50),
                          backgroundColor: Color(0xff4D9DD0),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                              side: BorderSide(width: 2, color: Colors.black))),

                      icon: Icon(Icons.lock_open, size: 32),
                      label: Text(
                        'Sign In',
                        style: TextStyle(fontSize: 24),
                      ),
                      onPressed: signIn,
                    ),
                    const SizedBox(height: 20),

                    Center(
                      child: RichText(
                        text: TextSpan(
                          style: TextStyle(color: Colors.black, fontSize: 12),
                          text: "No Account?  ",
                          children: [
                            TextSpan(
                              recognizer: TapGestureRecognizer()
                                ..onTap = widget.onClickedSignUp,
                              text: 'Sign Up',
                              style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  color: Theme.of(context).colorScheme.secondary),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Container(
                            height: 1,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(width: 5),
                        Text(
                          "Or ",
                          style: TextStyle(color: Colors.grey),
                        ),
                        Text(
                          "Sign in with",
                          style: TextStyle(color: Colors.black),
                        ),
                        const SizedBox(width: 5),
                        Expanded(
                          child: Container(
                            height: 1,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: const PlatformBoxes(
                            isBorder: true,
                            imagePath: 'assets/google_logo.png',
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      );

  Future signIn() async {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => const Center(child: CircularProgressIndicator()),
    );

    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.text.trim(),
        password: passwordController.text.trim(),
      );
    } on FirebaseAuthException catch (e) {
      print(e);

      Utils.showSnackBar(e.message);
    }

    //Navigator.of(context) not working!
    navigatorKey.currentState!.popUntil((route) => route.isFirst);
  }
}

// class Sign_in extends StatefulWidget {
//   const Sign_in({Key? key}) : super(key: key);
//
//   @override
//   State<Sign_in> createState() => _Sign_inState();
// }
//
// TextEditingController emailController = TextEditingController();
// TextEditingController passwordController = TextEditingController();
//
// final _formkey = GlobalKey<FormState>();
//
// class _Sign_inState extends State<Sign_in> {
//   bool isObsecure = true;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: SingleChildScrollView(
//           physics: BouncingScrollPhysics(),
//           child: Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 20.0),
//             child: Form(
//               key: _formkey,
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   SizedBox(
//                     height: 20,
//                   ),
//                   Row(
//                     children: [
//                       TextButton(
//                           onPressed: () {},
//                           child: Text(
//                             "Sign In",
//                             style: TextStyle(
//                                 color: Colors.black,
//                                 fontSize: 20,
//                                 fontWeight: FontWeight.bold),
//                           )),
//                     ],
//                   ),
//                   SizedBox(
//                     height: 10,
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.only(left: 9.0),
//                     child: Text(
//                       "Welcome Back",
//                       style: TextStyle(
//                           fontSize: 28,
//                           fontWeight: FontWeight.bold,
//                           color: Colors.black,
//                           wordSpacing: 1,
//                           letterSpacing: 1),
//                     ),
//                   ),
//                   SizedBox(
//                     height: 3,
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.only(left: 9.0),
//                     child: Text(
//                       "Sign in now to begin an amazing journey",
//                       style: TextStyle(
//                           color: Colors.grey, fontWeight: FontWeight.bold),
//                     ),
//                   ),
//                   SizedBox(
//                     height: 30,
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.symmetric(horizontal: 9.0),
//                     child: TextFormField(
//                       controller: emailController,
//                       validator: (email) =>
//                           email!.isEmpty ? "Please Enter Your Email" : null,
//                       decoration: InputDecoration(
//                         // hintText:"Email",
//                         labelText: "Email",
//                         labelStyle: TextStyle(
//                             color: Colors.black, fontWeight: FontWeight.bold),
//                         floatingLabelBehavior: FloatingLabelBehavior.always,
//                         border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(30),
//                           borderSide: BorderSide(width: 2, color: Colors.black),
//                         ),
//                         enabledBorder: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(30),
//                           borderSide: BorderSide(width: 2, color: Colors.black),
//                         ),
//                         focusedBorder: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(30),
//                           borderSide: BorderSide(width: 2, color: Colors.black),
//                         ),
//                         errorBorder: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(30),
//                           borderSide:
//                               BorderSide(width: 2, color: Colors.redAccent),
//                         ),
//                       ),
//                     ),
//                   ),
//                   SizedBox(
//                     height: 30,
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.symmetric(horizontal: 9.0),
//                     child: TextFormField(
//                       controller: passwordController,
//                       validator: (pwd) =>
//                           pwd!.isEmpty ? "Please Enter Your Password" : null,
//                       obscureText: isObsecure,
//                       decoration: InputDecoration(
//                         // hintText:"Email",
//                         labelText: "Password",
//                         labelStyle: TextStyle(
//                             color: Colors.black, fontWeight: FontWeight.bold),
//                         floatingLabelBehavior: FloatingLabelBehavior.always,
//                         border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(30),
//                           borderSide: BorderSide(width: 2, color: Colors.black),
//                         ),
//                         enabledBorder: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(30),
//                           borderSide: BorderSide(width: 2, color: Colors.black),
//                         ),
//                         focusedBorder: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(30),
//                           borderSide: BorderSide(width: 2, color: Colors.black),
//                         ),
//                         errorBorder: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(30),
//                           borderSide:
//                               BorderSide(width: 2, color: Colors.redAccent),
//                         ),
//                         suffixIcon: IconButton(
//                           onPressed: () {
//                             setState(() {
//                               isObsecure = !isObsecure;
//                             });
//                           },
//                           icon: Icon(
//                             isObsecure
//                                 ? Icons.visibility_off_outlined
//                                 : Icons.visibility,
//                             color: Colors.black,
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                   SizedBox(
//                     height: 20,
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.symmetric(horizontal: 9.0),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.end,
//                       children: [
//                         GestureDetector(
//                             onTap: () {
//                               Navigator.push(
//                                   context,
//                                   MaterialPageRoute(
//                                     builder: (context) => ForgetPassword(),
//                                   ));
//                             },
//                             child: Text(
//                               "Forgot Password?",
//                               style: TextStyle(
//                                   fontWeight: FontWeight.bold,
//                                   color: Colors.black),
//                             )),
//                       ],
//                     ),
//                   ),
//                   SizedBox(
//                     height: 20,
//                   ),
//
//                   SizedBox(
//                     height: 55,
//                     width: double.infinity,
//                     child: ElevatedButton(
//                       onPressed: () {
//                         if (_formkey.currentState!.validate()) {
//                           Navigator.push(
//                               context,
//                               MaterialPageRoute(
//                                 builder: (context) => EnableLocationService(),
//                               ));
//                         }
//                       },
//                       child: Text(
//                         "Sign In",
//                         style: TextStyle(
//                             fontSize: 20,
//                             color: Colors.white,
//                             fontWeight: FontWeight.bold),
//                       ),
//
//                       style: ElevatedButton.styleFrom(
//                           backgroundColor: Color(0xff4D9DD0),
//                           shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(30),
//                               side: BorderSide(width: 2, color: Colors.black))),
//
//                     ),
//                   ),
//                   SizedBox(
//                     height: 20,
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Text(
//                         "Dont Have an Account?",
//                         style: TextStyle(color: Colors.grey),
//                       ),
//                       GestureDetector(
//                         onTap: () {
//                           Navigator.push(
//                               context,
//                               MaterialPageRoute(
//                                   builder: (context) => Sign_up()));
//                         },
//                         child: Text(
//                           "Sign Up",
//                           style: TextStyle(
//                               fontWeight: FontWeight.bold, color: Colors.black),
//                         ),
//                       ),
//                     ],
//                   ),
//                   SizedBox(
//                     height: 30,
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Expanded(
//                         child: Container(
//                           height: 1,
//                           color: Colors.black,
//                         ),
//                       ),
//                       SizedBox(
//                         width: 5,
//                       ),
//                       Text(
//                         "Or ",
//                         style: TextStyle(color: Colors.grey),
//                       ),
//                       Text(
//                         "Sign in with",
//                         style: TextStyle(color: Colors.black),
//                       ),
//                       SizedBox(
//                         width: 5,
//                       ),
//                       Expanded(
//                         child: Container(
//                           height: 1,
//                           color: Colors.black,
//                         ),
//                       ),
//                     ],
//                   ),
//                   SizedBox(
//                     height: 20,
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                     children: [
//                       GestureDetector(
//                         onTap: () {},
//                         child: PlatformBoxes(
//                           isBorder: true,
//                           imagePath: 'assets/google_logo.png',
//                         ),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
