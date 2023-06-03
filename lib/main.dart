import 'package:date_picker_timeline/date_picker_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled6/utils/theme/theme.dart';
import 'package:untitled6/views/customer/5_update_cust_profile.dart';
import 'package:untitled6/views/owner/fill_details.dart';
import 'package:untitled6/views/owner/owner_profile_screen.dart';
import 'package:untitled6/views/owner/timing.dart';

import 'package:untitled6/views/splash_screen.dart';
import 'package:untitled6/views/customer/date_time_page.dart';
import 'package:untitled6/views/owner/customer_appointments.dart';
import 'package:untitled6/views/owner/customer_appointment_details.dart';
import 'controller/sign_in_controller.dart';
import 'firebase_options.dart';
import 'open_page.dart';
import 'utils/utils_error.dart';
import 'views/customer/4_customer_profile.dart';
import 'views/customer/order_successfully_completed.dart';

import 'package:untitled6/views/customer/portfolio_pictures.dart';
import 'views/owner/4_owner_profile.dart';
import 'views/owner/5_update_owner_profile.dart';
import 'views/owner/add_services.dart';
import 'views/owner/salon_portfolio.dart';
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
import 'views/customer/customer_profile_screen.dart';
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
import 'controller/authentication_repository/AuthenticationRepository.dart';

import 'views/services.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform)      //option: DefaultFirebaseOptions.currentPlatform
      .then((value) => Get.put(AuthenticationRepository()));

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

      themeMode: ThemeMode.light,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,

      debugShowCheckedModeBanner: false,
      defaultTransition: Transition.leftToRightWithFade,
      transitionDuration: const Duration(milliseconds: 500),

      home: SplashScreen(),  // Always Run this
      // home:Open_page(),
      // home: OnBoardingScreen(),
      // home: ProfilePage(),
      // home: WelcomePage(),
      // home: WelcomeScreen(),

      //--------------- Authorization --------------
      // home: Sign_up(),
      // home: SignInController(),
      // home: Log_in(onClickedSignUp: toggle),
      // home: Sign_up(onClickedSignIn: toggle),
      // home: VerifyEmailPage(),
      // home: ForgotPassword(),
      // home: EnableLocationService(),
      // home: YourLocation(),

      // home: MainPage(),
      // home:  SalonDetail()
      // home: AppointmentDetails(),


      //--------------- MenuBar options for customer ---------------
      // home: FavoriteSalon(),
      // home: NotificationPage(),      //for owner & customer
      // home: MyAppointments(),
      // home: PrivacyPolicy(),
      // home: AboutUs(),
      // home: BookAppointment(),

      //--------------- Customer ---------------
      // home: CustomerProfile(),
      // home: UpdateCustomerProfile(),
      // home: OrderBooking(),
      // home: PaymentMethod(),
      // home: AboutBarberShop(),
      // home: DateTimePage(),

      // home: MyAppointments(),

      // home: PortfolioPictures(),
      // home: OrderSummary(),
      // home: ReusableCardPage(),

      //--------------- Owner ---------------
      // home: OwnerProfilePage(),
      // home: OwnerProfile(),
      // home: add_services(),
      // home: CustomerAppointmentDetails(),
      // home: CustomerAppointments(),
      // home: AppointmentDetails(),
      // home: fill_details(),
      // home: OrderSuccessfullyCompleted(),
      // home: SalonPortfolio(),
      // home:  Reviews(),
      // home: Services(),
      // home: Timing(),
    );
  }
}
