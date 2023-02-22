import 'package:flutter/material.dart';

import 'change_password.dart';
import 'enable_service_page.dart';
import 'favrite_saloons.dart';
import 'forget_password.dart';
import 'front_page.dart';
import 'main_page.dart';
import 'open_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //home:Saloon_details_about() ,
      //home: Main_page(),
      //home:Favrite_Saloon() ,
      //home: Enable_Service_Page(),
      //home: front_page(),
      //home:Sign_in() ,
      //home: Sign_up(),
      //home:Forget_Password() ,
      //home: Verfication_page(),
      //home:Open_page() ,
      //home: Enable_Service_Page(),
      //home:Profile_Screen() ,
      //home:Profile_Details() ,
      //home:Edit_Profile(),
      // home:Saloon_Mainpage_Container(),
      home: ChangePassword(),
      //home:NotificationPage() ,
    );
  }
}
