import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:untitled6/views/customer/main_page.dart';
import 'package:dropdown_button2/dropdown_button2.dart';

import '../my_profile.dart';

// is mei Gender dropdown ki validation baki hai\ controller etc
// Picture pr click krne se camera ya upload hona chahiya

class EditOwnerProfile extends StatefulWidget {
  const EditOwnerProfile({Key? key}) : super(key: key);

  @override
  State<EditOwnerProfile> createState() => _EditOwnerProfileState();
}

class _EditOwnerProfileState extends State<EditOwnerProfile> {
  final _formkey = GlobalKey<FormState>();
  TextEditingController _fullNameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _phoneNumberController = TextEditingController();
  TextEditingController _addressController = TextEditingController();

  var _value = '-1';
  bool isObsecure = true;

  final List<String> items = [
    'Male',
    'Female',
  ];
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const MyProfile(),
              ));
            },
            child: const Icon(
              Icons.arrow_back_ios_new,
              color: Colors.black,
              size: 20,
            )),
        title: const Text(
          "Edit Profile",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
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
                  const SizedBox(
                    height: 10,
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
                                border:
                                Border.all(width: 2, color: Colors.black),
                                image: DecorationImage(
                                    image: AssetImage("assets/front_pic.jpeg"),
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
                                  child: const Icon(
                                    Icons.camera_alt_outlined,
                                    size: 19,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 7),

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
                  const SizedBox(height: 30),

                  //  Full name text-field
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 9.0),
                    child: TextFormField(
                      controller: _fullNameController,
                      validator: (fullName) =>
                      fullName != null && fullName.length < 3
                          ? 'Enter a name (minimum 3 characters)'
                          : null,
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
                  const SizedBox(height: 20),

                  //  Email text-field
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 9.0),
                    child: TextFormField(
                      controller: _emailController,
                      validator: (email) =>
                      email != null && !EmailValidator.validate(email)
                          ? 'Enter a valid email'
                          : null,
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
                  const SizedBox(height: 20),

                  //  Phone number text-field
//                 IntlPhoneField(
//                   showCountryFlag: false,
//                   decoration: InputDecoration(
//                       border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(20))),
//                   disableLengthCheck: true,
//                 ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 9.0),
                    child: TextFormField(
                      controller: _phoneNumberController,
                      keyboardType: TextInputType.phone,

                      validator: (phone) =>
                      phone != null && phone.length == 11
                          ? 'Phone number must be 11 digits'
                          : null,

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
                  const SizedBox(height: 20),

                  //  Gender dropdown
                  // Padding(
                  //   padding: const EdgeInsets.all(10.0),
                  //   child: DropdownButtonFormField(
                  //     decoration: InputDecoration(
                  //         border: OutlineInputBorder(
                  //           borderRadius: BorderRadius.circular(30),
                  //           borderSide: BorderSide(width: 2, color: Colors.black),
                  //         )),
                  //     value: _value,
                  //     items: const [
                  //       DropdownMenuItem(
                  //         child: Text('Select Gender'),
                  //         value: '-1',
                  //       ),
                  //       DropdownMenuItem(
                  //         child: Text('Female'),
                  //         value: '1',
                  //       ),
                  //       DropdownMenuItem(
                  //         child: Text('Male'),
                  //         value: '2',
                  //       ),
                  //     ],
                  //     onChanged: (v) {},
                  //   ),
                  // ),

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
                                  color: Colors.black,
                                ),
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
                            Icons.keyboard_arrow_down,
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
                  const SizedBox(height: 20),

                  //  Address text-field
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 9.0),
                    child: TextFormField(
                      controller: _addressController,

                      validator: (address) =>
                      address != null && address.length < 5
                          ? 'Enter your address (minimum 5 characters)'
                          : null,


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
                  const SizedBox(height: 25),

                  //  Update Button
                  SizedBox(
                    height: 55,
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        if (_formkey.currentState!.validate()) {
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //       builder: (context) => ,
                          //     ));
                        }
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xff4D9DD0),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                              side: BorderSide(width: 2, color: Colors.black))),
                      child: const Text(
                        "Update Profile",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
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
