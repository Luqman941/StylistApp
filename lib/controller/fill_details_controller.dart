import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../models/fill_details_model.dart';
import 'fill_details_repository/FillDetailsRepository.dart';

class FillDetailsController extends GetxController {
  static FillDetailsController get instance => Get.find();

  // TextField Controllers to get data from TextFields
  final shopName = TextEditingController();
  final address = TextEditingController();
  final location = TextEditingController();
  final holiday = TextEditingController();

  final detailsRepo = Get.put(FillDetailsRepository());

  Future<void> createdetails(FillDetailsModel detail) async {
    await detailsRepo.createDetails(detail);
    // Get.to(() => const MainPage());
  }
}
