import 'package:flutter/material.dart';
import 'package:untitled6/New%20folder/profile_spage.dart';

class Edit_Profile extends StatefulWidget {
  Edit_Profile({Key? key}) : super(key: key);

  @override
  State<Edit_Profile> createState() => _Edit_ProfileState();
}

class _Edit_ProfileState extends State<Edit_Profile> {
  TextEditingController _fncontroller = TextEditingController();

  TextEditingController _emailcontroller = TextEditingController();

  TextEditingController _fnocontroller = TextEditingController();

  TextEditingController _gendercontroller = TextEditingController();

  final _formkey = GlobalKey<FormState>();
  String gender = "Male";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 15.0, right: 15, top: 10),
          child: SingleChildScrollView(
            child: Form(
              key: _formkey,
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.arrow_back_ios_new,
                        color: Colors.black,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        "Edit Profile",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Center(
                    child: Column(
                      children: [
                        Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(width: 2, color: Colors.black),
                            image: DecorationImage(
                                image:
                                    AssetImage("assets/images/front_pic.jpeg"),
                                fit: BoxFit.cover),
                          ),
                        ),
                        SizedBox(
                          height: 7,
                        ),
                        Text(
                          "Afaq Ahmad",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        ),
                        SizedBox(
                          height: 7,
                        ),
                        Text(
                          "AfaqAhmad@gmail.com",
                          style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                              fontSize: 11),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextFormField(
                    validator: (fn) =>
                        fn!.isEmpty ? "Please Enter Your Full Name" : null,
                    controller: _fncontroller,
                    decoration: InputDecoration(
                      labelText: "Full Name",
                      labelStyle: TextStyle(color: Colors.black),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide:
                              BorderSide(width: 2, color: Colors.black)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide:
                              BorderSide(width: 2, color: Colors.black)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide:
                              BorderSide(width: 2, color: Colors.black)),
                      errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(width: 2, color: Colors.red)),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  // Email
                  TextFormField(
                    validator: (email) =>
                        email!.isEmpty ? "Please Enter Your Email" : null,
                    controller: _emailcontroller,
                    decoration: InputDecoration(
                      labelText: "Email",
                      labelStyle: TextStyle(color: Colors.black),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide:
                              BorderSide(width: 2, color: Colors.black)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide:
                              BorderSide(width: 2, color: Colors.black)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide:
                              BorderSide(width: 2, color: Colors.black)),
                      errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(width: 2, color: Colors.red)),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  // Phone Number
                  TextFormField(
                    validator: (fno) =>
                        fno!.isEmpty ? "Please Enter Your Number" : null,
                    controller: _fnocontroller,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: "Phone Number",
                      labelStyle: TextStyle(color: Colors.black),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide:
                              BorderSide(width: 2, color: Colors.black)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide:
                              BorderSide(width: 2, color: Colors.black)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide:
                              BorderSide(width: 2, color: Colors.black)),
                      errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(width: 2, color: Colors.red)),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  DropdownButton(
                    items: [
                      DropdownMenuItem(
                        value: "Male",
                        child: Text("Male"),
                      ),
                      DropdownMenuItem(
                        value: "Female",
                        child: Text("Female"),
                      ),
                    ],
                    onChanged: (value) {
                      setState(() {
                        gender = value!;
                      });
                    },
                    hint: Text("select gender"),
                  ),
                  // Gender
                  // Container(
                  //   height: 80,
                  //   width: double.maxFinite,
                  //   decoration:BoxDecoration(
                  //     borderRadius: BorderRadius.circular(25),
                  //     border: Border.all(width: 2,color: Colors.black),
                  //   ) ,
                  //   child: TextFormField(
                  //     validator: (gender) =>
                  //         gender!.isEmpty ? "Please Select Your Gender" : null,
                  //     controller: _gendercontroller,
                  //
                  //     decoration: InputDecoration(
                  //       prefix:Padding(padding:EdgeInsets.only(left:15) ) ,
                  //       labelText: " Gender",
                  //       labelStyle: TextStyle(color: Colors.black),
                  //       border: InputBorder.none,
                  //       // border: OutlineInputBorder(
                  //       //     borderRadius: BorderRadius.circular(30),
                  //       //     borderSide:
                  //       //         BorderSide(width: 2, color: Colors.black)),
                  //       // enabledBorder: OutlineInputBorder(
                  //       //     borderRadius: BorderRadius.circular(30),
                  //       //     borderSide:
                  //       //         BorderSide(width: 2, color: Colors.black)),
                  //       // focusedBorder: OutlineInputBorder(
                  //       //     borderRadius: BorderRadius.circular(30),
                  //       //     borderSide:
                  //       //         BorderSide(width: 2, color: Colors.black)),
                  //       // errorBorder: OutlineInputBorder(
                  //       //     borderRadius: BorderRadius.circular(30),
                  //       //     borderSide: BorderSide(width: 2, color: Colors.red)),
                  //     ),
                  //   ),
                  // ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.14,
                  ),
                  // Full Name

                  SizedBox(
                    height: 60,
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        if (_formkey.currentState!.validate()) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Profile_Screen(),
                              ));
                        }
                      },
                      child: Text(
                        "Update Profile",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xff61C0BF),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)),
                          side: BorderSide(width: 2, color: Colors.black)),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
