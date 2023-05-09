import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:untitled6/views/auth/log_in.dart';
import 'package:untitled6/views/auth/verify_Email.dart';

import '../../utils/platform_boxes.dart';
import '../../main.dart';
import 'package:flutter/gestures.dart';
import '../../utils/textfield_widget.dart';
import '../../utils/utils_error.dart';
import 'forgot_password.dart';
import 'package:email_validator/email_validator.dart';

//is mei bs sab ki validation baqi hai
//is class ka naam change krne se pehle last wala method pehle tabdeel kro
class Sign_up extends StatefulWidget {
  final Function() onClickedSignIn;

  const Sign_up({
    Key? key,
    required this.onClickedSignIn,
  }) : super(key: key);

  @override
  State<Sign_up> createState() => _Sign_upState();
}

class _Sign_upState extends State<Sign_up> {
  final formKey = GlobalKey<FormState>();
  final fullNameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final phoneController = TextEditingController();
  bool isObsecure = true;

  @override
  void dispose() {
    fullNameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    phoneController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            padding: const EdgeInsets.all(16),
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20),

                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Log_in(),
                              ));
                        },
                        child: Icon(
                          Icons.arrow_back_ios_new,
                          size: 18,
                        ),
                      ),
                      const SizedBox(width: 20),
                      const Text(
                        'Sign Up',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const SizedBox(height: 25),

                  const Text(
                    "Create an Account",
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        wordSpacing: 1,
                        letterSpacing: 1),
                  ),
                  const SizedBox(height: 3),

                  const Padding(
                    padding: EdgeInsets.only(left: 2.0),
                    child: Text(
                      "Sign Up now to begin an amazing journey",
                      style: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(height: 40),

                  //  Full name text-field
                  TextFormField(
                    controller: fullNameController,
                    cursorColor: Colors.white,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                      labelText: "Full name",
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
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: (fullName) =>
                        fullName != null && fullName.length < 3
                            ? 'Enter a name (minimum 3 character)'
                            : null,
                  ),
                  const SizedBox(height: 30),

                  //  Phone number text-field
                  IntlPhoneField(
                    controller: phoneController,
                    showCountryFlag: false,
                    decoration: InputDecoration(
                      labelText: "Phone Number",
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
                    disableLengthCheck: true,
                  ),
                  const SizedBox(height: 30),

                  //  Email text-field
                  TextFormField(
                    controller: emailController,
                    cursorColor: Colors.white,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                      labelText: "Email",
                      labelStyle: const TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide:
                            const BorderSide(width: 2, color: Colors.black),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide:
                            const BorderSide(width: 2, color: Colors.black),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide:
                            const BorderSide(width: 2, color: Colors.black),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide:
                            const BorderSide(width: 2, color: Colors.redAccent),
                      ),
                    ),
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: (email) =>
                        email != null && !EmailValidator.validate(email)
                            ? 'Enter a valid email'
                            : null,
                  ),
                  const SizedBox(height: 30),

                  //  password text-field
                  TextFormField(
                    controller: passwordController,
                    textInputAction: TextInputAction.next,
                    obscureText: isObsecure,
                    decoration: InputDecoration(
                      labelText: "Password",
                      labelStyle: const TextStyle(
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

                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: (value) => value != null && value.length < 6
                        ? 'Enter minimum 6 characters'
                        : null,
                    //obscureText: true,
                  ),
                  const SizedBox(height: 30),

                  //  confirm password text-field
                  TextFormField(
                    // controller: confirmPasswordController,
                    textInputAction: TextInputAction.next,
                    obscureText: isObsecure,
                    decoration: InputDecoration(
                      labelText: "Confirm Password",
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

                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: (value) =>
                        value != null && value != passwordController.text
                            ? 'Confirm password must be equal to Password!'
                            : null,
                    //obscureText: true,
                  ),
                  const SizedBox(height: 20),

                  //  SignUp Button
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

                    icon: const Icon(Icons.arrow_forward, size: 32),
                    label: const Text(
                      'Sign Up',
                      style: TextStyle(fontSize: 24),
                    ),
                    onPressed: signUp,
                  ),
                  const SizedBox(height: 20),

                  Center(
                    child: RichText(
                      text: TextSpan(
                        style: TextStyle(color: Colors.black, fontSize: 12),
                        text: "Already have an account? ",
                        children: [
                          TextSpan(
                            recognizer: TapGestureRecognizer()
                              ..onTap = widget.onClickedSignIn,
                            text: 'Log In',
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
                      const SizedBox(
                        width: 5,
                      ),
                      const Text(
                        "Or ",
                        style: TextStyle(color: Colors.grey),
                      ),
                      const Text(
                        "Sign in with",
                        style: TextStyle(color: Colors.black),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
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
                        child: PlatformBoxes(
                          isBorder: true,
                          imagePath: 'assets/google_logo.png',
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      );

  Future signUp() async {
    final isValid = formKey.currentState!.validate();
    if (!isValid) return;

    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => Center(child: CircularProgressIndicator()),
    );

    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
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





// class Sign_up extends StatefulWidget {
//
//   final Function()? onClickedSignIn;
//
//   const Sign_up({
//     Key? key
//   , this.onClickedSignIn,}) : super(key: key);
//
//   @override
//   State<Sign_up> createState() => _Sign_upState();
// }
//
// class _Sign_upState extends State<Sign_up> {
//   bool isObsecure = true;
//
//   TextEditingController _fncontroller = TextEditingController();
//   TextEditingController _emailcontroller = TextEditingController();
//   TextEditingController _phonenocontroller = TextEditingController();
//   TextEditingController _pwdcontroller = TextEditingController();
//
//   final _formkey = GlobalKey<FormState>();
//
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
//                       GestureDetector(
//                         onTap: () {
//                           Navigator.push(
//                               context,
//                               MaterialPageRoute(
//                                 builder: (context) => Sign_in(),
//                               ));
//                         },
//                         child: Icon(
//                           Icons.arrow_back_ios_new,
//                           size: 18,
//                         ),
//                       ),
//                       SizedBox(
//                         width: 20,
//                       ),
//                       Text(
//                         'Sign Up',
//                         style: TextStyle(
//                             fontSize: 20, fontWeight: FontWeight.bold),
//                       ),
//                     ],
//                   ),
//                   SizedBox(
//                     height: 25,
//                   ),
//                   Text(
//                     "Create an Account",
//                     style: TextStyle(
//                         fontSize: 24,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.black,
//                         wordSpacing: 1,
//                         letterSpacing: 1),
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
//                   TextFormField(
//                     controller: _fncontroller,
//                     validator: (fn) =>
//                         fn!.isEmpty ? "Please Enter Your Name" : null,
//                     decoration: InputDecoration(
//                       // hintText:"Email",
//                       labelText: "Full Name",
//                       labelStyle: TextStyle(
//                           color: Colors.black, fontWeight: FontWeight.bold),
//                       floatingLabelBehavior: FloatingLabelBehavior.always,
//                       border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(30),
//                         borderSide: BorderSide(width: 2, color: Colors.black),
//                       ),
//                       enabledBorder: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(30),
//                         borderSide: BorderSide(width: 2, color: Colors.black),
//                       ),
//                       focusedBorder: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(30),
//                         borderSide: BorderSide(width: 2, color: Colors.black),
//                       ),
//                       errorBorder: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(30),
//                         borderSide:
//                             BorderSide(width: 2, color: Colors.redAccent),
//                       ),
//                     ),
//                   ),
//                   SizedBox(
//                     height: 20,
//                   ),
//                   TextFormField(
//                     controller: _emailcontroller,
//                     validator: (email) =>
//                         email!.isEmpty ? "Please Enter Your Email" : null,
//                     decoration: InputDecoration(
//                       labelText: "Email",
//                       labelStyle: TextStyle(
//                           color: Colors.black, fontWeight: FontWeight.bold),
//                       floatingLabelBehavior: FloatingLabelBehavior.always,
//                       border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(30),
//                         borderSide: BorderSide(width: 2, color: Colors.black),
//                       ),
//                       enabledBorder: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(30),
//                         borderSide: BorderSide(width: 2, color: Colors.black),
//                       ),
//                       focusedBorder: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(30),
//                         borderSide: BorderSide(width: 2, color: Colors.black),
//                       ),
//                       errorBorder: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(30),
//                         borderSide:
//                             BorderSide(width: 2, color: Colors.redAccent),
//                       ),
//                     ),
//                   ),
//                   SizedBox(
//                     height: 20,
//                   ),
//
//                   TextFormField(
//                     keyboardType: TextInputType.number,
//                     controller: _phonenocontroller,
//                     validator: (num) =>
//                         num!.isEmpty ? "Please Enter Your Number" : null,
//                     decoration: InputDecoration(
//                       labelText: "Phone Number",
//                       labelStyle: TextStyle(
//                           color: Colors.black, fontWeight: FontWeight.bold),
//                       floatingLabelBehavior: FloatingLabelBehavior.always,
//                       border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(30),
//                         borderSide: BorderSide(width: 2, color: Colors.black),
//                       ),
//                       enabledBorder: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(30),
//                         borderSide: BorderSide(width: 2, color: Colors.black),
//                       ),
//                       focusedBorder: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(30),
//                         borderSide: BorderSide(width: 2, color: Colors.black),
//                       ),
//                       errorBorder: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(30),
//                         borderSide:
//                             BorderSide(width: 2, color: Colors.redAccent),
//                       ),
//                     ),
//                   ),
//                   IntlPhoneField(
//                     showCountryFlag: false,
//                     decoration: InputDecoration(
//                         border: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(20))),
//                     disableLengthCheck: true,
//                   ),
//                   SizedBox(
//                     height: 20,
//                   ),
//                   TextFormField(
//                     validator: (pwd) =>
//                         pwd!.isEmpty ? "Please Enter Your Password" : null,
//                     obscureText: isObsecure,
//                     decoration: InputDecoration(
//                       labelText: "Password",
//                       labelStyle: TextStyle(
//                           color: Colors.black, fontWeight: FontWeight.bold),
//                       floatingLabelBehavior: FloatingLabelBehavior.always,
//                       border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(30),
//                         borderSide: BorderSide(width: 2, color: Colors.black),
//                       ),
//                       enabledBorder: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(30),
//                         borderSide: BorderSide(width: 2, color: Colors.black),
//                       ),
//                       focusedBorder: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(30),
//                         borderSide: BorderSide(width: 2, color: Colors.black),
//                       ),
//                       errorBorder: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(30),
//                         borderSide:
//                             BorderSide(width: 2, color: Colors.redAccent),
//                       ),
//                       suffixIcon: IconButton(
//                         onPressed: () {
//                           setState(() {
//                             isObsecure = !isObsecure;
//                           });
//                         },
//                         icon: Icon(
//                           isObsecure
//                               ? Icons.visibility_off_outlined
//                               : Icons.visibility,
//                           color: Colors.black,
//                         ),
//                       ),
//                     ),
//                   ),
//                   SizedBox(
//                     height: 20,
//                   ),
//                   Container(
//                     height: 55,
//                     width: double.infinity,
//                     decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(28),
//                         color: Color(0xff4D9DD0),
//                         border: Border.all(width: 2, color: Colors.black)),
//                     child: TextButton(
//                       onPressed: () {
//                         if (_formkey.currentState!.validate()) {
//                           Navigator.push(
//                               context,
//                               MaterialPageRoute(
//                                   builder: (context) => VerificationPage()));
//                         }
//                       },
//                       child: Text(
//                         "Sign Up",
//                         style: TextStyle(
//                             fontWeight: FontWeight.bold,
//                             color: Colors.white,
//                             fontSize: 17),
//                       ),
//                     ),
//                   ),
//                   SizedBox(
//                     height: 20,
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Text(
//                         "Have an Account?",
//                         style: TextStyle(color: Colors.grey),
//                       ),
//                       GestureDetector(
//                         onTap: () {
//                           Navigator.push(
//                               context,
//                               MaterialPageRoute(
//                                 builder: (context) => Sign_in(),
//                               ));
//                         },
//                         child: Text(
//                           "Sign In",
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
//                     mainAxisAlignment: MainAxisAlignment.center,
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
