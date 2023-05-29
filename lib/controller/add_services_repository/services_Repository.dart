import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled6/models/user_model.dart';

import '../../models/services_model.dart';

class ServicesRepository extends GetxController {
  static ServicesRepository get instance => Get.find();

  final _db = FirebaseFirestore.instance;

  //-- Store service in Firebase
  Future<void> createServices(ServicesModel services) async {
    await _db
        .collection("Salon Owners")
        .doc("abc")
        .set(services.toJson())
        .whenComplete(
          () => Get.snackbar("Success", "Your service has been created.",
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
  Future<ServicesModel> getServiceDetails(
      UserModel user, String serviceName) async {
    final snapshot = await _db
        .collection("Salon Owners")
        .doc(user.id)
        .collection("Services")
        .where("ServiceName", isEqualTo: serviceName)
        .get();
    final serviceData =
        snapshot.docs.map((e) => ServicesModel.fromSnapshot(e)).single;
    return serviceData;
  }

  Future<List<ServicesModel>> allServiceDetails(UserModel user) async {
    final snapshot = await _db
        .collection("Salon Owners")
        .doc(user.id)
        .collection("Services")
        .get();
    final serviceData =
        snapshot.docs.map((e) => ServicesModel.fromSnapshot(e)).toList();
    return serviceData;
  }

  Future<void> updateUserRecord(UserModel user, ServicesModel service) async {
    await _db
        .collection("Salon Owners")
        .doc(user.id)
        .collection("Services")
        .doc()
        .update(service.toJson());
  }
}
