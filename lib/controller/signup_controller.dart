import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'authentication_repository/AuthenticationRepository.dart';

class SignUpController extends GetxController{
  static SignUpController get instance => Get.find();

  // TextField Controllers to get data from TextFields
  final fullNameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final phoneController = TextEditingController();

  // Call this function from design & it will do the rest
  void registerUser(String email, String password){
    AuthenticationRepository.instance.createUserWithEmailAndPassword(email, password);
  }
}