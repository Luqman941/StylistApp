import 'package:get/get.dart';
import 'package:untitled6/views/customer/main_page.dart';

import 'authentication_repository/AuthenticationRepository.dart';

class OTPController extends GetxController{
  static OTPController get instance => Get.find();

  void verifyOTP(String otp) async{
    var isVerified = await AuthenticationRepository.instance.verifyOTP(otp);
    isVerified ? Get.offAll(const MainPage()) : Get.back();

  }
}
