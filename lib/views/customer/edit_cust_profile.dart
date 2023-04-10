import 'package:flutter/material.dart';
import 'package:untitled6/views/customer/main_page.dart';
import 'package:dropdown_button2/dropdown_button2.dart';



class EditCustProfile extends StatefulWidget {
  const EditCustProfile({Key? key}) : super(key: key);

  @override
  State<EditCustProfile> createState() => _EditCustProfileState();
}

TextEditingController _emailcontroller = TextEditingController();
TextEditingController _pwdcontroller = TextEditingController();

final _formkey = GlobalKey<FormState>();

class _EditCustProfileState extends State<EditCustProfile> {
  bool isObsecure = true;



  final List<String> items = [
    'Male',
    'Female',
  ];
  String? selectedValue;

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
                      height: 20,
                    ),
                    Row(
                      children: [
                        Row(
                          children: const [
                            Icon(
                              Icons.arrow_back_ios_new,
                              size: 20,
                            ),
                          ],),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              "Edit Profile",
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
                          Text(
                            "Fayaz Khan",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),

                          Text(
                            "fayazkhan@gmail.com",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 14),
                          ),

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
                        email!.isEmpty ? "Please Enter Your Full Name" : null,
                        decoration: InputDecoration(
                          // hintText:"Email",
                          labelText: "Full Name",
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
                        validator: (email) =>
                        email!.isEmpty ? "Please Enter Your Email" : null,
                        decoration: InputDecoration(
                          // hintText:"Email",
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
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 9.0),
                      child: TextFormField(
                        controller: _emailcontroller,
                        validator: (email) => email!.isEmpty ? "Phone Number" : null,
                        decoration: InputDecoration(
                          // hintText:"Email",
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
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),






                    Center(
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton2(
                          isExpanded: true,
                          hint: Row(
                            children: const [

                              Expanded(
                                child: Text(
                                  'Select Gender',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          ),
                          items: items
                              .map((item) => DropdownMenuItem<String>(
                            value: item,
                            child: Text(
                              item,
                              style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ))
                              .toList(),
                          value: selectedValue,
                          onChanged: (value) {
                            setState(() {
                              selectedValue = value as String;
                            });
                          },
                          buttonStyleData: ButtonStyleData(
                            height: 60,
                            width: 350,
                            padding: const EdgeInsets.only(left: 14, right: 14),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              border: Border.all(
                                color: Colors.black,
                              ),
                              color: Colors.white,
                            ),
                            elevation: 2,
                          ),
                          iconStyleData: const IconStyleData(
                            icon: Icon(
                              Icons.arrow_forward_ios_outlined,
                            ),
                            iconSize: 14,
                            iconEnabledColor: Colors.black,
                            iconDisabledColor: Colors.grey,
                          ),
                          dropdownStyleData: DropdownStyleData(
                              maxHeight: 200,
                              width: 200,
                              padding: null,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(14),
                                color: Colors.white,
                              ),
                              elevation: 8,
                              offset: const Offset(-20, 0),
                              scrollbarTheme: ScrollbarThemeData(
                                radius: const Radius.circular(40),
                                thickness: MaterialStateProperty.all(20),
                                thumbVisibility: MaterialStateProperty.all(true),
                              )),
                          menuItemStyleData: const MenuItemStyleData(
                            height: 40,
                            padding: EdgeInsets.only(left: 14, right: 14),
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
                        validator: (email) =>
                        email!.isEmpty ? "Please Enter Your Address" : null,
                        decoration: InputDecoration(
                          // hintText:"Email",
                          labelText: "Address",
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
                                  builder: (context) => MainPage(),
                                ));
                          }
                        },
                        child: Text(
                          "Update Profile",
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
