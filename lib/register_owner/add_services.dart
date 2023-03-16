import 'package:flutter/material.dart';

import '../New folder/main_page.dart';

class add_services extends StatefulWidget {
  const add_services({Key? key}) : super(key: key);

  @override
  State<add_services> createState() => _add_servicesState();
}

TextEditingController _emailcontroller = TextEditingController();
TextEditingController _pwdcontroller = TextEditingController();

final _formkey = GlobalKey<FormState>();

class _add_servicesState extends State<add_services> {
  bool isObsecure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: SafeArea(
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Form(
                key: _formkey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [

                        Row(
                          children: const [
                            Icon(
                              Icons.arrow_back_ios_new,
                              size: 20,
                            )]
                            ),


                        TextButton(
                            onPressed: () {},
                            child: Text(
                              "Add Services",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            )),
                      ],
                    ),
                    Center(
                      child: Column(
                        children: [
                          Stack(
                            children: [
                              Container(
                                height: 80,
                                width: 80,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(width: 2, color: Colors.black),
                                  image: DecorationImage(
                                      image: AssetImage(
                                          "assets/front_pic.jpeg"),
                                      fit: BoxFit.cover),
                                ),
                              ),
                              Positioned(
                                bottom: 2,
                                right: 0,
                                child: GestureDetector(
                                  onTap: () {},
                                  child: Container(
                                    height: 30,
                                    width: 30,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Color(0xffE0C3F6),
                                    ),
                                    child: Icon(
                                      Icons.camera_alt_outlined,
                                      size: 19,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          TextButton(
                                onPressed: (){},
                                child: Text(
                                  "Add Picture",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                )),

                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 9.0),
                      child: TextFormField(
                        controller: _emailcontroller,
                        validator: (email) =>
                        email!.isEmpty ? "Please Enter Service Name" : null,
                        decoration: InputDecoration(
                          // hintText:"Email",
                          labelText: "Service NAme",
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
                    ),
                    SizedBox(
                      height: 20,
                    ),


                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Expanded(
                              child: Text(
                                "Add Sub Services",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold)
                              )
                        ),
                        Spacer(),
                        Expanded(
                          child: TextButton(
                            onPressed: (){},
                              child: Text(
                                "+",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold),
                              )),
                        ),
                      ],
                    ),


                    SizedBox(
                      height: 20,
                    ),


                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 9.0),
                      child: TextFormField(
                        controller: _emailcontroller,
                        validator: (email) =>
                        email!.isEmpty ? "Please Enter Sub_Service Name" : null,
                        decoration: InputDecoration(
                          // hintText:"Email",
                          labelText: "Sub Service Name",
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
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 9.0),
                      child: TextFormField(
                        controller: _emailcontroller,
                        validator: (email) => email!.isEmpty ? "Price" : null,
                        decoration: InputDecoration(
                          // hintText:"Email",
                          labelText: "Price",
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
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 9.0),
                      child: TextFormField(
                        controller: _emailcontroller,
                        validator: (email) => email!.isEmpty ? "Service Time" : null,
                        decoration: InputDecoration(
                          // hintText:"Email",
                          labelText: "Service Time",
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
                    ),

                    SizedBox(
                      height: 25,
                    ),
                    SizedBox(
                      height: 55,
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          if (_formkey.currentState!.validate()) {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Main_page(),
                                ));
                          }
                        },
                        child: Text(
                          "Add Services",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xff4D9DD0),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                                side: BorderSide(width: 2, color: Colors.black))),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
