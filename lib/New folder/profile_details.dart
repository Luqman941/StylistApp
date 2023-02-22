import 'package:flutter/material.dart';

class Profile_Details extends StatelessWidget {
  const Profile_Details({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 40),
          child: SingleChildScrollView(
            child: Column(
              children: [

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
                              image: AssetImage("assets/images/front_pic.jpeg"),
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
                SizedBox(height: 35,),
                // Full Name
                TextFormField(
                  decoration: InputDecoration(
                    labelText:"Full Name",
                    labelStyle:TextStyle(color:Colors.black ) ,
                    border:OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide:BorderSide(width: 2,color: Colors.black)
                    ),
                    enabledBorder:OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide:BorderSide(width: 2,color: Colors.black)
                    ),
                    focusedBorder:OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide:BorderSide(width: 2,color: Colors.black)
                    ),
                    errorBorder:OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide:BorderSide(width: 2,color: Colors.red)
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                // Email
                TextFormField(
                  decoration: InputDecoration(
                    labelText:"Email",
                    labelStyle:TextStyle(color:Colors.black ) ,
                    border:OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide:BorderSide(width: 2,color: Colors.black)
                    ),
                    enabledBorder:OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide:BorderSide(width: 2,color: Colors.black)
                    ),
                    focusedBorder:OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide:BorderSide(width: 2,color: Colors.black)
                    ),
                    errorBorder:OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide:BorderSide(width: 2,color: Colors.red)
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                // Phone Number
                TextFormField(
                  keyboardType:TextInputType.number ,
                  decoration: InputDecoration(
                    labelText:"Phone Number",
                    labelStyle:TextStyle(color:Colors.black ) ,
                    border:OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide:BorderSide(width: 2,color: Colors.black)
                    ),
                    enabledBorder:OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide:BorderSide(width: 2,color: Colors.black)
                    ),
                    focusedBorder:OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide:BorderSide(width: 2,color: Colors.black)
                    ),
                    errorBorder:OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide:BorderSide(width: 2,color: Colors.red)
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                // Gender
                TextFormField(
                  decoration: InputDecoration(
                    labelText:"Gender",
                    labelStyle:TextStyle(color:Colors.black ) ,
                    border:OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide:BorderSide(width: 2,color: Colors.black)
                    ),
                    enabledBorder:OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide:BorderSide(width: 2,color: Colors.black)
                    ),
                    focusedBorder:OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide:BorderSide(width: 2,color: Colors.black)
                    ),
                    errorBorder:OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide:BorderSide(width: 2,color: Colors.red)
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
