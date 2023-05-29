import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../models/services_model.dart';
import 'add_services_repository/services_Repository.dart';


class AddServicesController extends GetxController {
  static AddServicesController get instance => Get.find();

  // TextField Controllers to get data from TextFields
  final serviceName = TextEditingController();
  final subServiceName = TextEditingController();
  final price = TextEditingController();
  final serviceTime = TextEditingController();

  final servicesRepo = Get.put(ServicesRepository());


  Future<void> createService(ServicesModel service) async {
    await servicesRepo.createServices(service);
    // Get.to(() => const MainPage());
  }
}
