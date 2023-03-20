import 'package:date_picker_timeline/date_picker_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled6/New%20folder/saloon_details_about.dart';
import 'package:untitled6/page.dart';
import 'package:untitled6/password_changing.dart';
import 'package:untitled6/photo.dart';
import 'package:untitled6/privacy_policy.dart';
import 'package:untitled6/review.dart';

import 'package:untitled6/saloon_detail_page.dart';
import 'package:untitled6/sign_in.dart';
import 'package:untitled6/sign_up.dart';
import 'package:untitled6/ur_useabl_page.dart';
import 'package:untitled6/verification.dart';
import 'package:untitled6/welcome_page.dart';
import 'package:untitled6/your_appointment.dart';
import 'package:untitled6/your_location.dart';

import 'Appointment_details.dart';
import 'New folder/change_password.dart';
import 'New folder/edit_profile.dart';
import 'New folder/enable_service_page.dart';
import 'New folder/favrite_saloons.dart';
import 'New folder/forget_password.dart';
import 'New folder/front_page.dart';
import 'New folder/main_page.dart';
import 'New folder/notification_page.dart';
import 'New folder/profile_details.dart';
import 'New folder/profile_spage.dart';
import 'New folder/saloons_mainpage_container.dart';

import 'about.dart';
import 'about_ous.dart';
import 'bookedorder.dart';
import 'booking_appointment.dart';
import 'bottom_sheet.dart';
import 'day.dart';

import 'order_summary.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: page(),
      //home: front_page(),
      //home: welcomepage(),
      //home: Sign_in(),
      //home: Sign_up(),
      //home: Verfication_page(),
      //home: Forget_Password(),
      //home: ChangePassword(),
      //home: Enable_Service_Page(),
      //home: your_location(),
      //home: Main_page(),
      //home: SaloondetailPage()
      //home: Profile_Screen(),
      //home: Profile_Details(),
      //home: photo(),
      //home: Sign_up(),
      //home: your_location(),
      //home: Password_changing(),

      //home: Favrite_Saloon(),
      //home: Appointment_detail(),
      //home: NotificationPage(),
      //home: privacypolicy(),
      // home: aboutous(),
      //home: bookingappointment(),
      // home: Saloon_details_about()
      //home: bookOrderedPage(),
      //home: bottomSheet(),
      // home: AboutPage(),
      //home: homePage(),

      //home: Profile_Details(),
      // home: Profile_Screen(),
      //home: Saloon_Mainpage_Container(),
      //home: review(),

      //home: YourAppointment(),
      //home: orderSummaryPage(),
      //home: reusablecardPage(),
      //home: Profile_Screen(),
    );
  }
}

class homePage extends StatefulWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  handleChange(DateTime date) {
    print(date);
  }

  DatePickerController _controller = DatePickerController();

  DateTime _selectedValue = DateTime.now();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: 15, right: 15),
          child: Column(
            children: [
              Row(
                children: [
                  Icon(
                    Icons.arrow_back_ios_new,
                    size: 20,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Select Date & Time",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.black, width: 1)),
                    child: const Center(
                      child: Icon(
                        Icons.arrow_back_ios_new,
                        size: 20,
                      ),
                    ),
                  ),
                  Text(
                    "Auguet 2022",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.black54),
                  ),
                  Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                        color: Colors.purple.withOpacity(.3),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.black, width: 1)),
                    child: Center(
                      child: Icon(
                        Icons.arrow_forward_ios,
                        size: 20,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 100,
                child: DatePicker(
                  DateTime.now(),
                  width: 60,
                  height: 80,
                  controller: _controller,
                  initialSelectedDate: DateTime.now(),
                  selectionColor: Colors.purple.withOpacity(.3),
                  selectedTextColor: Colors.white,
                  onDateChange: (date) {
                    // New date selected
                    setState(() {
                      _selectedValue = date;
                    });
                  },
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Divider(
                indent: 10,
                endIndent: 10,
                color: Colors.black12,
                thickness: 1,
              ),
              Row(
                children: [
                  Text(
                    "Time",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Spacer(),
                  Container(
                    height: 8,
                    width: 8,
                    decoration: BoxDecoration(
                      color: Colors.purple.withOpacity(.3),
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Colors.black, width: 1),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Available",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Container(
                    height: 8,
                    width: 8,
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(.3),
                      borderRadius: BorderRadius.circular(5),
                      //border: Border.all(color: Colors.black,width: 1),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Booked",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Colors.black54),
                  )
                ],
              ),
              Spacer(),
              GestureDetector(
                  onTap: () {
                    Get.to(YourAppointment());
                  },
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.blue.withOpacity(.5),
                        border: Border.all(color: Colors.black, width: 1)),
                    child: Center(
                      child: Text(
                        "Continue",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      ),
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
