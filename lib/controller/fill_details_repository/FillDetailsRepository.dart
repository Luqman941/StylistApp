import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../models/fill_details_model.dart';
import '../../models/user_model.dart';

class FillDetailsRepository extends GetxController {
  static FillDetailsRepository get instance => Get.find();

  final _db = FirebaseFirestore.instance;

  //-- Store service in Firebase
  Future<void> createDetails(FillDetailsModel details) async {
    await _db
        .collection("Salon Owners")
        .doc("abc")
        .set(details.toJson())
        .whenComplete(
          () => Get.snackbar("Success", "Your details has been created.",
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
  Future<FillDetailsModel> getServiceDetails(
      UserModel user, String serviceName) async {
    final snapshot = await _db
        .collection("Salon Owners")
        .doc(user.id)
        .collection("Details")
        .where("ServiceName", isEqualTo: serviceName)
        .get();
    final detailsData =
        snapshot.docs.map((e) => FillDetailsModel.fromSnapshot(e)).single;
    return detailsData;
  }

  Future<List<FillDetailsModel>> allServiceDetails(UserModel user) async {
    final snapshot = await _db
        .collection("Salon Owners")
        .doc(user.id)
        .collection("Details")
        .get();
    final serviceData =
    snapshot.docs.map((e) => FillDetailsModel.fromSnapshot(e)).toList();
    return serviceData;
  }

  Future<void> updateUserRecord(UserModel user, FillDetailsModel detail) async {
    await _db
        .collection("Salon Owners")
        .doc(user.id)
        .collection("Details")
        .doc()
        .update(detail.toJson());
  }
}