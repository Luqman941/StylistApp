import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../models/user_model.dart';
import '../views/auth/otp_screen.dart';
import 'authentication_repository/AuthenticationRepository.dart';
import 'user_repository/user_repository.dart';

class SignUpController extends GetxController {
  static SignUpController get instance => Get.find();

  // TextField Controllers to get data from TextFields
  final fullName = TextEditingController();
  final email = TextEditingController();
  final password = TextEditingController();
  final phoneNo = TextEditingController();

  final userRepo = Get.put(UserRepository());

  // Call this function from design & it will do the rest
  void registerUser(String email, String password) {
    AuthenticationRepository.instance
        .createUserWithEmailAndPassword(email, password);

    // String? error = AuthenticationRepository.instance
    //     .createUserWithEmailAndPassword(email, password) as String?;
    // Get.showSnackbar(GetSnackBar(message: error.toString()));
  }

  //-- Get phoneNo from user & pass it to Auth Repository for Firebase Authentication
  void phoneAuthentication(String phoneNo) {
    AuthenticationRepository.instance.phoneAuthentication(phoneNo);
  }

  Future<void> createUser(UserModel user) async {
    await userRepo.createUser(user);
    // phoneAuthentication(user.phoneNo);
    //
    // Get.to(() => const OTPScreen());
  }
}
