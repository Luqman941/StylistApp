import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:untitled6/views/auth/sign_up.dart';
import '';

import '../../main.dart';
import 'enable_location_service.dart';
import 'forget_password.dart';
import '../customer/main_page.dart';
import '../../New folder/widgets/platform_boxes.dart';


class Sign_in extends StatefulWidget {
  const Sign_in({Key? key}) : super(key: key);

  @override
  State<Sign_in> createState() => _Sign_inState();
}

class _Sign_inState extends State<Sign_in> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) => SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 40),
            TextField(
              controller: emailController,
              cursorColor: Colors.white,
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(labelText: 'Email'),
            ),
            SizedBox(height: 4),
            TextField(
              controller: passwordController,
              textInputAction: TextInputAction.done,
              decoration: InputDecoration(labelText: 'Password'),
              obscureText: true,
            ),
            SizedBox(height: 20),
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                minimumSize: Size.fromHeight(50),
              ),
              icon: Icon(Icons.lock_open, size: 32),
              label: Text(
                'Sign In',
                style: TextStyle(fontSize: 24),
              ),
              onPressed: signIn,
            ),
          ],
        ),
      );

  Future signIn() async {
    showDialog(context: context,
        barrierDismissible: false,
        builder: (context)=>Center(child: CircularProgressIndicator()),
    );

    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.text.trim(),
        password: passwordController.text.trim(),
      );
    } on FirebaseAuthException catch(e){
        print(e);
    }

    //Navigator.of(context) not working!
    navigatorKey.currentState!.popUntil((route)=>route.isFirst);
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
//                       "Sign in now to being an amazing journey",
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
//                               "Forget Password?",
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
//                           imagePath: 'assets/google.png',
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
