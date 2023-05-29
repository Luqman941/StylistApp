import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controller/signup_controller.dart';


import '../../main.dart';
import '../../utils/utils_error.dart';
import 'forgot_password.dart';
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

  final controller = Get.put(SignUpController());
  final _formKey = GlobalKey<FormState>();
  bool isObsecure = true;


  @override
  Widget build(BuildContext context) => Scaffold(
    body: SafeArea(
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.only(left: 9.0),
                  child: Text(
                    "Sign In",
                    style: Theme.of(context).textTheme.headline2,
                    // style: TextStyle(
                    //     color: Colors.black,
                    //     fontSize: 25,
                    //     fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(height: 20),
                 Padding(
                  padding: EdgeInsets.only(left: 9.0),
                  child: Text(
                    "Welcome Back",
                    style: Theme.of(context).textTheme.headline2,

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
                  controller: controller.email,
                  cursorColor: Colors.white,
                  textInputAction: TextInputAction.next,
                  decoration: const InputDecoration(
                    labelText: "Email",
                  ),
                ),
                const SizedBox(height: 30),
                TextField(
                  controller: controller.password,
                  textInputAction: TextInputAction.done,
                  obscureText: isObsecure,
                  decoration: InputDecoration(
                    labelText: "Password",
                    // hintText: "Password",
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
                        onTap: () => Get.to(const ForgotPassword()),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                ElevatedButton.icon(
                  // Style property is defined in Elevated button theme class
                  icon: const Icon(Icons.lock_open, size: 32),
                  label: const Text(
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
                              color:
                              Theme.of(context).colorScheme.secondary),
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
                    const Text(
                      "Or ",
                      style: TextStyle(color: Colors.grey),
                    ),
                    const Text(
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
        email: controller.email.text.trim(),
        password: controller.password.text.trim(),
      );
    } on FirebaseAuthException catch (e) {
      print(e);

      Utils.showSnackBar(e.message);
    }

    //Navigator.of(context) not working!
    navigatorKey.currentState!.popUntil((route) => route.isFirst);
  }
}





//-- Another old method

// class Log_in extends StatefulWidget {
//   final VoidCallback? onClickedSignUp;
//
//   const Log_in({
//     Key? key,
//     this.onClickedSignUp,
//   }) : super(key: key);
//
//   @override
//   State<Log_in> createState() => _Log_inState();
// }
//
// class _Log_inState extends State<Log_in> {
//   final emailController = TextEditingController();
//   final passwordController = TextEditingController();
//   bool isObsecure = true;
//
//   @override
//   void dispose() {
//     emailController.dispose();
//     passwordController.dispose();
//
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) => Scaffold(
//         body: SafeArea(
//           child: SingleChildScrollView(
//             physics: const BouncingScrollPhysics(),
//             padding: const EdgeInsets.all(16),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     const SizedBox(height: 20),
//                     Padding(
//                       padding: const EdgeInsets.only(left: 9.0),
//                       child: Text(
//                         "Sign In",
//                         style: Theme.of(context).textTheme.headline2,
//                         // style: TextStyle(
//                         //     color: Colors.black,
//                         //     fontSize: 25,
//                         //     fontWeight: FontWeight.bold),
//                       ),
//                     ),
//                     const SizedBox(height: 20),
//                     const Padding(
//                       padding: EdgeInsets.only(left: 9.0),
//                       child: Text(
//                         "Welcome Back",
//                         style: TextStyle(
//                             fontSize: 28,
//                             fontWeight: FontWeight.bold,
//                             color: Colors.black,
//                             wordSpacing: 1,
//                             letterSpacing: 1),
//                       ),
//                     ),
//                     const SizedBox(height: 3),
//                     const Padding(
//                       padding: EdgeInsets.only(left: 9.0),
//                       child: Text(
//                         "Sign in now to begin an amazing journey",
//                         style: TextStyle(
//                             color: Colors.grey, fontWeight: FontWeight.bold),
//                       ),
//                     ),
//                     const SizedBox(height: 60),
//                     TextField(
//                       controller: emailController,
//                       cursorColor: Colors.white,
//                       textInputAction: TextInputAction.next,
//                       decoration: const InputDecoration(
//                         labelText: "Email",
//                       ),
//                     ),
//                     const SizedBox(height: 30),
//                     TextField(
//                       controller: passwordController,
//                       textInputAction: TextInputAction.done,
//                       obscureText: isObsecure,
//                       decoration: InputDecoration(
//                         labelText: "Password",
//                         // hintText: "Password",
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
//
//                       //obscureText: true,
//                     ),
//                     const SizedBox(height: 20),
//                     Padding(
//                       padding: const EdgeInsets.symmetric(horizontal: 9.0),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.end,
//                         children: [
//                           GestureDetector(
//                             child: Text(
//                               "Forgot Password?",
//                               style: TextStyle(
//                                   decoration: TextDecoration.underline,
//                                   fontWeight: FontWeight.bold,
//                                   color:
//                                       Theme.of(context).colorScheme.secondary),
//                             ),
//                             onTap: () => Get.to(const ForgotPassword()),
//                           ),
//                         ],
//                       ),
//                     ),
//                     const SizedBox(height: 20),
//                     ElevatedButton.icon(
//                       // Style property is defined in Elevated button theme class
//                       icon: const Icon(Icons.lock_open, size: 32),
//                       label: const Text(
//                         'Sign In',
//                         style: TextStyle(fontSize: 24),
//                       ),
//                       onPressed: signIn,
//                     ),
//                     const SizedBox(height: 20),
//                     Center(
//                       child: RichText(
//                         text: TextSpan(
//                           style: TextStyle(color: Colors.black, fontSize: 12),
//                           text: "No Account?  ",
//                           children: [
//                             TextSpan(
//                               recognizer: TapGestureRecognizer()
//                                 ..onTap = widget.onClickedSignUp,
//                               text: 'Sign Up',
//                               style: TextStyle(
//                                   decoration: TextDecoration.underline,
//                                   color:
//                                       Theme.of(context).colorScheme.secondary),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                     const SizedBox(height: 30),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Expanded(
//                           child: Container(
//                             height: 1,
//                             color: Colors.black,
//                           ),
//                         ),
//                         const SizedBox(width: 5),
//                         const Text(
//                           "Or ",
//                           style: TextStyle(color: Colors.grey),
//                         ),
//                         const Text(
//                           "Sign in with",
//                           style: TextStyle(color: Colors.black),
//                         ),
//                         const SizedBox(width: 5),
//                         Expanded(
//                           child: Container(
//                             height: 1,
//                             color: Colors.black,
//                           ),
//                         ),
//                       ],
//                     ),
//                     const SizedBox(height: 20),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                       children: [
//                         GestureDetector(
//                           onTap: () {},
//                           child: const PlatformBoxes(
//                             isBorder: true,
//                             imagePath: 'assets/google_logo.png',
//                           ),
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ),
//       );
//
//   Future signIn() async {
//     showDialog(
//       context: context,
//       barrierDismissible: false,
//       builder: (context) => const Center(child: CircularProgressIndicator()),
//     );
//
//     try {
//       await FirebaseAuth.instance.signInWithEmailAndPassword(
//         email: emailController.text.trim(),
//         password: passwordController.text.trim(),
//       );
//     } on FirebaseAuthException catch (e) {
//       print(e);
//
//       Utils.showSnackBar(e.message);
//     }
//
//     //Navigator.of(context) not working!
//     navigatorKey.currentState!.popUntil((route) => route.isFirst);
//   }
// }

