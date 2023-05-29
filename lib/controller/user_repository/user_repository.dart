import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

import '../../models/user_model.dart';

/*
  ======
  Todo: Step-2 [User Repository to perform Database Operations]
  ======
 */

class UserRepository extends GetxController {
  static UserRepository get instance => Get.find();

  final _db = FirebaseFirestore.instance;

  //-- Store user in Firestore
  Future<void> createUser(UserModel user) async {
   await _db.collection("Customers").add(user.toJson()).whenComplete(
          () =>
          Get.snackbar("Success", "Your account has been created.",
              snackPosition: SnackPosition.BOTTOM,
              backgroundColor: Colors.green.withOpacity(0.5),
              colorText: Colors.green),
    )
        .catchError((error, stackTrace) {
      Get.snackbar("Error", "Something went wrong. Try again",
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.green.withOpacity(0.5),
          colorText: Colors.red);
      print(error.toString());
    });
  }



  // Step-2 - Fetch all Users OR User details
  Future<UserModel> getUserDetails(String email) async {
    final snapshot = await _db.collection("Customers").where("Email", isEqualTo: email).get();
    final userData = snapshot.docs.map((e) => UserModel.fromSnapshot(e)).single;
    return userData;
  }

  Future<List<UserModel>> allUser() async {
    final snapshot = await _db.collection("Customers").get();
    final userData = snapshot.docs.map((e) => UserModel.fromSnapshot(e)).toList();
    return userData;
  }


  Future<void> updateUserRecord(UserModel user) async{
    await _db.collection("Customers").doc(user.id).update(user.toJson());
  }
}