import 'package:date_picker_timeline/date_picker_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled6/utils/theme/theme.dart';

import 'package:untitled6/views/splash_screen.dart';
import 'package:untitled6/views/customer/date_time_page.dart';
import 'package:untitled6/views/owner/customer_appointments.dart';
import 'package:untitled6/views/owner/customer_appointment_details.dart';
import 'controller/sign_in_controller.dart';
import 'open_page.dart';
import 'utils/utils_error.dart';
import 'views/customer/order_successfully_completed.dart';

import 'package:untitled6/views/customer/portfolio_pictures.dart';
import 'views/owner/edit_owner_profile.dart';
import 'views/privacy_policy.dart';
import 'package:untitled6/views/review.dart';

import 'package:untitled6/views/customer/salon_detail.dart';
import 'package:untitled6/views/auth/log_in.dart';
import 'package:untitled6/views/auth/sign_up.dart';
import 'package:untitled6/views/auth/verify_Email.dart';
import 'package:untitled6/views/welcome_page.dart';
import 'package:untitled6/views/customer/3_appointment_details.dart';
import 'package:untitled6/views/auth/your_location.dart';

import 'views/customer/1_My_appointments.dart';
import 'views/auth/enable_location_service.dart';
import 'views/customer/favorite_salons.dart';
import 'views/auth/forgot_password.dart';
import 'views/on_boarding_screens.dart';
import 'views/customer/main_page.dart';
import 'views/notification_page.dart';
import 'views/my_profile.dart';
import 'views/customer/profile_page.dart';
import 'reusable_widgets/saloon_mainpage_container.dart';
import 'reusable_widgets/reusable_card_page.dart';


import 'views/customer/about_barbershop.dart';
import 'views/about_us.dart';
import 'views/customer/order_booking.dart';
import 'views/customer/book_appointment.dart';
import 'views/customer/payment_method.dart';
import 'day.dart';

import 'views/customer/2_order_summary.dart';

import 'package:firebase_core/firebase_core.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

final navigatorKey = GlobalKey<NavigatorState>();

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    bool isLogin = true;
    void toggle() => setState(() => isLogin = !isLogin);

    return GetMaterialApp(

      scaffoldMessengerKey: Utils.messengerKey, //It is used in utils
      navigatorKey: navigatorKey, //It is used in signIn

      debugShowCheckedModeBanner: false,

      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      themeMode: ThemeMode.light,

      // home:Open_page(),
      // home: SplashScreen(),
      // home: OnBoardingScreen(),
      // home: FrontPage(),
      // home: ProfilePage(),
      // home: WelcomePage(),

      //--------------- Authorization --------------

      home:  SignInController(),
      // home: Log_in(onClickedSignUp: toggle),
      // home: Sign_up(onClickedSignIn: toggle),
      // home: VerifyEmailPage(),
      // home: ForgotPassword(),
      // home: EnableLocationService(),
      // home: YourLocation(),

      // home: MainPage(),
      // home: AppointmentDetails(),

      // home: SalonDetail(),

      // home: ProfileDetails(),
      // home: photo(),
      // home: YourLocation(),
      // home: ProfilePage(),

      //--------------- MenuBar options for customer ---------------
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

      //--------------- Owner ---------------
      // home: CustomerAppointmentDetails(),
      // home: CustomerAppointments(),

      // home: AppointmentDetails(),
      // home: FavoriteSaloon(),
      // home: OrderSuccessfullyCompleted(),
      // home: PortfolioPictures(),
      // home:  Reviews(),

      //----------- Es mei error hai--------------
      // home: Services(),
    );
  }
}
