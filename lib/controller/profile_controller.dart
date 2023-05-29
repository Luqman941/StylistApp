import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled6/models/user_model.dart';

import 'authentication_repository/AuthenticationRepository.dart';
import 'user_repository/user_repository.dart';

class ProfileController extends GetxController{
  static ProfileController get instance => Get.find();

//-- Controllers are removed after other vdo


// -- Repositories
final _authRepo = Get.put(AuthenticationRepository());
final _userRepo = Get.put(UserRepository());


//-- Step-3 - Get User Email & pass to UserRepository to fetch user record
 getUserData(){
  final email =  _authRepo.firebaseUser.value?.email;
  if(email != null){
    return _userRepo.getUserDetails(email);
  } else{
    Get.snackbar("Error", "Login to continue");
  }
}


//-- Fetch List of user records
Future<List<UserModel>> getAllUser() async => await _userRepo.allUser();


 updateRecord(UserModel user) async {
   await _userRepo.updateUserRecord(user);
 }
}