import 'package:date_picker_timeline/date_picker_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:untitled6/views/splash_screen.dart';
import 'package:untitled6/views/customer/date_time_page.dart';
import 'package:untitled6/views/owner/customer_appointments.dart';
import 'package:untitled6/views/owner/customer_appointment_details.dart';
import 'open_page.dart';
import 'views/customer/order_successfully_completed.dart';
import 'views/auth/change_password.dart';
import 'package:untitled6/views/customer/portfolio_pictures.dart';
import 'views/owner/edit_profile.dart';
import 'views/privacy_policy.dart';
import 'package:untitled6/views/review.dart';

import 'package:untitled6/views/customer/saloon_detail.dart';
import 'package:untitled6/views/auth/sign_in.dart';
import 'package:untitled6/views/auth/sign_up.dart';
import 'package:untitled6/New%20folder/reusable_card_page.dart';
import 'package:untitled6/views/auth/verification.dart';
import 'package:untitled6/views/welcome_page.dart';
import 'package:untitled6/views/customer/2_your_appointment.dart';
import 'package:untitled6/views/auth/your_location.dart';

import 'views/customer/1_appointment_details.dart';
import 'views/auth/change_password.dart';
import 'views/auth/enable_location_service.dart';
import 'views/customer/favorite_saloons.dart';
import 'views/auth/forget_password.dart';
import 'views/first_pages.dart';
import 'views/customer/main_page.dart';
import 'views/notification_page.dart';
import 'views/profile_details.dart';
import 'views/customer/profile_page.dart';
import 'New folder/saloon_mainpage_container.dart';

import 'views/customer/about_barbershop.dart';
import 'views/about_us.dart';
import 'views/customer/order_booking.dart';
import 'views/customer/book_appointment.dart';
import 'views/customer/payment_method.dart';
import 'day.dart';

import 'views/customer/order_summary.dart';

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

      // home:Open_page(),
      // home: FirstPage(),
      // home: FrontPage(),
      // home: ProfilePage(),
      // home: WelcomePage(),
      // home: Sign_in(),
      // home: Sign_up(),
      // home: VerificationPage(),
      // home: ForgetPassword(),
      // home: ChangePassword(),
      // home: EnableLocationService(),
      // home: YourLocation(),

      // home: MainPage(),
      // home: SaloonDetail(),
      // home: ProfileDetails(),
      // home: photo(),
      // home: YourLocation(),
      // home: ChangePassword(),
      // home: ProfilePage(),

      //-------------------MenuBar options for customer-----------------
      // home: FavoriteSaloon(),
      // home: NotificationPage(),      //for owner & customer
      // home: Appointment_detail(),
      // home: PrivacyPolicy(),
      // home: AboutUs(),
      // home: BookAppointment(),

      // home: OrderBooking(),
      // home: PaymentMethod(),
      // home: AboutBarberShop(),
      // home: DateTimePage(),

      // home: ProfileDetails(),
      // home: Profile_Screen(),
      // home: review(),

      // home: Saloon_Mainpage_Container(),

      // home: YourAppointment(),

      // home: OrderSummary(),
      // home: ReusableCardPage(),
      // home: Profile_Screen(),

      //-------- Owner----------
      // home: CustomerAppointmentDetails(),
      // home: CustomerAppointments(),

      // home: AppointmentDetails(),
      // home: FavoriteSaloon(),
      // home: OrderSuccessfullyCompleted(),
      // home: PortfolioPictures(),
      // home:  Reviews(),

      //----------- En mei error hai--------------

      // home: Services(),
    );
  }
}
