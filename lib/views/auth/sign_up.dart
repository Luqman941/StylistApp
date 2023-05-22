import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:untitled6/views/auth/log_in.dart';
import 'package:untitled6/views/auth/verify_Email.dart';

import '../../controller/signup_controller.dart';
import '../../utils/platform_boxes.dart';
import '../../main.dart';
import 'package:flutter/gestures.dart';
import '../../utils/utils_error.dart';
import 'forgot_password.dart';
import 'package:email_validator/email_validator.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

//is mei phoneNo ki validation baqi hai
//is class ka naam change krne se pehle last wala method pehle tabdeel kro



// Orignal A1
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
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.all(16),
        child: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 5),

              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.to(const Log_in());
                    },
                    child: const Icon(
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
              const SizedBox(height: 30),

              //  Full name text-field
              TextFormField(
                controller: fullNameController,
                cursorColor: Colors.white,
                textInputAction: TextInputAction.next,
                decoration: const InputDecoration(
                  label: Text("Full name"),
                ),
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (fullName) =>
                fullName != null && fullName.length < 3
                    ? 'Enter a name (minimum 3 character)'
                    : null,
              ),
              const SizedBox(height: 20),

              //  Email text-field
              TextFormField(
                controller: emailController,
                cursorColor: Colors.white,
                textInputAction: TextInputAction.next,
                decoration: const InputDecoration(
                  label: Text("Email"),
                ),
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (email) =>
                email != null && !EmailValidator.validate(email)
                    ? 'Enter a valid email'
                    : null,
              ),
              const SizedBox(height: 20),

              //  Phone number text-field
              IntlPhoneField(
                controller: phoneController,
                showCountryFlag: true,
                decoration: const InputDecoration(
                  label: Text("Phone Number"),
                ),
                disableLengthCheck: true,
              ),
              const SizedBox(height: 20),

              //  password text-field
              TextFormField(
                controller: passwordController,
                textInputAction: TextInputAction.next,
                obscureText: isObsecure,
                decoration: InputDecoration(
                  label: const Text("Password"),
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
              const SizedBox(height: 20),

              //  confirm password text-field
              TextFormField(
                // controller: confirmPasswordController,
                textInputAction: TextInputAction.next,
                obscureText: isObsecure,
                decoration: const InputDecoration(
                  labelText: "Confirm Password",
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
                // Style property is defined in Elevated button theme class
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
                  const SizedBox(width: 5),
                  const Text(
                    "Or ",
                    style: TextStyle(color: Colors.grey),
                  ),
                  const Text(
                    "Sign up with",
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

      //  To add the data in cloud firestore
      CollectionReference collRef =
      FirebaseFirestore.instance.collection('user');
      collRef
          .add({
        'email': emailController.text,
        'fullName': fullNameController.text,
        'password': passwordController.text,
        'phone': phoneController.text,
      })
          .then((value) {})
          .onError((error, stackTrace) => null);
    } on FirebaseAuthException catch (e) {
      print(e);

      Utils.showSnackBar(e.message);
    }

    //Navigator.of(context) not working!
    navigatorKey.currentState!.popUntil((route) => route.isFirst);
  }
}










// // For Testing CodingWithTea
// class Sign_up extends StatefulWidget {
//   @override
//   State<Sign_up> createState() => _Sign_upState();
// }
//
// class _Sign_upState extends State<Sign_up> {
//   final controller = Get.put(SignUpController());
//   final formKey = GlobalKey<FormState>();
//   bool isObsecure = true;
//
//
//   @override
//   Widget build(BuildContext context) => Scaffold(
//     body: SafeArea(
//       child: SingleChildScrollView(
//         physics: const BouncingScrollPhysics(),
//         padding: const EdgeInsets.all(16),
//         child: Form(
//           key: formKey,
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               const SizedBox(height: 5),
//
//               Row(
//                 children: [
//                   GestureDetector(
//                     onTap: () {
//                       Get.to(const Log_in());
//                     },
//                     child: const Icon(
//                       Icons.arrow_back_ios_new,
//                       size: 18,
//                     ),
//                   ),
//                   const SizedBox(width: 20),
//                   const Text(
//                     'Sign Up',
//                     style: TextStyle(
//                         fontSize: 25, fontWeight: FontWeight.bold),
//                   ),
//                 ],
//               ),
//               const SizedBox(height: 25),
//
//               const Text(
//                 "Create an Account",
//                 style: TextStyle(
//                     fontSize: 24,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.black,
//                     wordSpacing: 1,
//                     letterSpacing: 1),
//               ),
//               const SizedBox(height: 3),
//
//               const Padding(
//                 padding: EdgeInsets.only(left: 2.0),
//                 child: Text(
//                   "Sign Up now to begin an amazing journey",
//                   style: TextStyle(
//                       color: Colors.grey, fontWeight: FontWeight.bold),
//                 ),
//               ),
//               const SizedBox(height: 30),
//
//               //  Full name text-field
//               TextFormField(
//                 controller: controller.fullNameController,
//                 cursorColor: Colors.white,
//                 textInputAction: TextInputAction.next,
//                 decoration: const InputDecoration(
//                   label: Text("Full name"),
//                 ),
//                 autovalidateMode: AutovalidateMode.onUserInteraction,
//                 validator: (fullName) =>
//                 fullName != null && fullName.length < 3
//                     ? 'Enter a name (minimum 3 character)'
//                     : null,
//               ),
//               const SizedBox(height: 20),
//
//               //  Email text-field
//               TextFormField(
//                 controller: controller.emailController,
//                 cursorColor: Colors.white,
//                 textInputAction: TextInputAction.next,
//                 decoration: const InputDecoration(
//                   label: Text("Email"),
//                 ),
//                 autovalidateMode: AutovalidateMode.onUserInteraction,
//                 validator: (email) =>
//                 email != null && !EmailValidator.validate(email)
//                     ? 'Enter a valid email'
//                     : null,
//               ),
//               const SizedBox(height: 20),
//
//               //  Phone number text-field
//               IntlPhoneField(
//                 controller: controller.phoneController,
//                 showCountryFlag: true,
//                 decoration: const InputDecoration(
//                   label: Text("Phone Number"),
//                 ),
//                 disableLengthCheck: true,
//               ),
//               const SizedBox(height: 20),
//
//               //  password text-field
//               TextFormField(
//                 controller: controller.passwordController,
//                 textInputAction: TextInputAction.next,
//                 obscureText: isObsecure,
//                 decoration: InputDecoration(
//                   label: const Text("Password"),
//                   suffixIcon: IconButton(
//                     onPressed: () {
//                       setState(() {
//                         isObsecure = !isObsecure;
//                       });
//                     },
//                     icon: Icon(
//                       isObsecure
//                           ? Icons.visibility_off_outlined
//                           : Icons.visibility,
//                       color: Colors.black,
//                     ),
//                   ),
//                 ),
//
//                 autovalidateMode: AutovalidateMode.onUserInteraction,
//                 validator: (value) => value != null && value.length < 6
//                     ? 'Enter minimum 6 characters'
//                     : null,
//                 //obscureText: true,
//               ),
//               const SizedBox(height: 20),
//
//               //  confirm password text-field
//               TextFormField(
//                 // controller: confirmPasswordController,
//                 textInputAction: TextInputAction.next,
//                 obscureText: isObsecure,
//                 decoration: const InputDecoration(
//                   labelText: "Confirm Password",
//                 ),
//
//                 autovalidateMode: AutovalidateMode.onUserInteraction,
//                 validator: (value) =>
//                 value != null && value != controller.passwordController.text
//                     ? 'Confirm password must be equal to Password!'
//                     : null,
//                 //obscureText: true,
//               ),
//               const SizedBox(height: 20),
//
//               //  SignUp Button
//               ElevatedButton.icon(
//                 // Style property is defined in Elevated button theme class
//                 icon: const Icon(Icons.arrow_forward, size: 32),
//                 label: const Text(
//                   'Sign Up',
//                   style: TextStyle(fontSize: 24),
//                 ),
//                 onPressed: () {
//                   if(formKey.currentState!.validate()){
//                     SignUpController.instance.registerUser(controller.emailController.text.trim(), controller.passwordController.text.trim());
//                   }
//                 },
//               ),
//               const SizedBox(height: 20),
//
//               Center(
//                 child: RichText(
//                   text: TextSpan(
//                     style: TextStyle(color: Colors.black, fontSize: 12),
//                     text: "Already have an account? ",
//                     children: [
//                       TextSpan(
//                         recognizer: TapGestureRecognizer()
//                           ..onTap = null,
//                         text: 'Log In',
//                         style: TextStyle(
//                             decoration: TextDecoration.underline,
//                             color: Theme.of(context).colorScheme.secondary),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//               const SizedBox(height: 30),
//
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Expanded(
//                     child: Container(
//                       height: 1,
//                       color: Colors.black,
//                     ),
//                   ),
//                   const SizedBox(width: 5),
//                   const Text(
//                     "Or ",
//                     style: TextStyle(color: Colors.grey),
//                   ),
//                   const Text(
//                     "Sign up with",
//                     style: TextStyle(color: Colors.black),
//                   ),
//                   const SizedBox(width: 5),
//                   Expanded(
//                     child: Container(
//                       height: 1,
//                       color: Colors.black,
//                     ),
//                   ),
//                 ],
//               ),
//               const SizedBox(height: 20),
//
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: [
//                   GestureDetector(
//                     onTap: () {},
//                     child: PlatformBoxes(
//                       isBorder: true,
//                       imagePath: 'assets/google_logo.png',
//                     ),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     ),
//   );
//
// }

