import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:get/get.dart';

import '../../controller/profile_controller.dart';
import '../../controller/signup_controller.dart';
import '../../models/user_model.dart';


// is mei Gender dropdown ki validation baki hai\ controller etc
// Picture pr click krne se camera ya upload hona chahiya

class UpdateOwnerProfile extends StatefulWidget {
  const UpdateOwnerProfile({Key? key}) : super(key: key);

  @override
  State<UpdateOwnerProfile> createState() => _UpdateOwnerProfileState();
}

class _UpdateOwnerProfileState extends State<UpdateOwnerProfile> {
  var _value = '-1';
  bool isObsecure = true;

  final List<String> items = [
    'Male',
    'Female',
  ];
  String? selectedValue;

  @override
  Widget build(BuildContext context) {

    final controller = Get.put(ProfileController());
    final _formKey = GlobalKey<FormState>();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: GestureDetector(
            onTap: () => Get.back(),
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
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: FutureBuilder(
              future: controller.getUserData(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
                  if (snapshot.hasData) {
                    UserModel user = snapshot.data as UserModel;

                    final fullName = TextEditingController(text: user.fullName);
                    final email = TextEditingController(text: user.email);
                    final password = TextEditingController(text: user.password);
                    final phoneNo = TextEditingController(text: user.phoneNo);

                    return Form(
                      key: _formKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 10),

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
                                        border: Border.all(
                                            width: 2, color: Colors.black),
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
                                          decoration: const BoxDecoration(
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
                            padding:
                            const EdgeInsets.symmetric(horizontal: 9.0),
                            child: TextFormField(
                              controller: fullName,
                              cursorColor: Colors.white,
                              textInputAction: TextInputAction.next,
                              decoration: const InputDecoration(
                                label: Text("Full name"),
                              ),
                              autovalidateMode:
                              AutovalidateMode.onUserInteraction,
                              validator: (fullName) =>
                              fullName != null && fullName.length < 3
                                  ? 'Enter a name (minimum 3 character)'
                                  : null,
                            ),
                          ),
                          const SizedBox(height: 20),

                          //  Email text-field
                          Padding(
                            padding:
                            const EdgeInsets.symmetric(horizontal: 9.0),
                            child: TextFormField(
                              controller: email,
                              cursorColor: Colors.white,
                              textInputAction: TextInputAction.next,
                              decoration: const InputDecoration(
                                label: Text("Email"),
                              ),
                              autovalidateMode:
                              AutovalidateMode.onUserInteraction,
                              validator: (email) => email != null &&
                                  !EmailValidator.validate(email)
                                  ? 'Enter a valid email'
                                  : null,
                            ),
                          ),
                          const SizedBox(height: 20),

                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 9.0),
                            child: TextFormField(
                              controller: password,
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
                            padding:
                            const EdgeInsets.symmetric(horizontal: 9.0),
                            child: TextFormField(
                              controller: phoneNo,
                              cursorColor: Colors.white,
                              keyboardType: TextInputType.phone,
                              textInputAction: TextInputAction.next,
                              decoration: const InputDecoration(
                                label: Text("Phone Number"),
                              ),
                              autovalidateMode:
                              AutovalidateMode.onUserInteraction,
                              validator: (phoneNo) => phoneNo != null &&
                                  (phoneNo.length < 13 ||
                                      phoneNo.length > 13)
                                  ? 'Enter exact 13 digits'
                                  : null,
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
                                  padding: const EdgeInsets.only(
                                      left: 14, right: 14),
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
                                      thumbVisibility:
                                      MaterialStateProperty.all(true),
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
                            padding:
                            const EdgeInsets.symmetric(horizontal: 9.0),
                            child: TextFormField(
                              // controller: controller.address,
                              decoration: const InputDecoration(
                                label: Text("Address"),
                              ),
                              validator: (address) => address != null &&
                                  address.length < 5
                                  ? 'Enter your address (minimum 5 characters)'
                                  : null,
                            ),
                          ),
                          const SizedBox(height: 25),

                          //  Update Button
                          SizedBox(
                            height: 55,
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: () async {
                                if (_formKey.currentState!.validate()) {
                                  final userData = UserModel(
                                    email: email.text.trim(),
                                    password: password.text.trim(),
                                    fullName: fullName.text.trim(),
                                    phoneNo: phoneNo.text.trim(),
                                  );

                                  await controller.updateRecord(userData);
                                }
                              },
                              child: const Text(
                                "Update Profile",
                                style: TextStyle(
                                  fontSize: 22,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  } else if(snapshot.hasError){
                    return Center(child: Text(snapshot.error.toString()));
                  } else {
                    return const Center(child: Text("Somrthing went wrong"));
                  }
                } else {
                  return const Center(child: CircularProgressIndicator());
                }
              },
            ),
          ),
        ),
      ),
    );
  }
}
