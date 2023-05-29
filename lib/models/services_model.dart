import 'package:cloud_firestore/cloud_firestore.dart';

class ServicesModel {
  final String? id;
  final String serviceName;
  final String subServiceName;
  final String price;
  final String serviceTime;

  const ServicesModel({
    this.id,
    required this.serviceName,
    required this.subServiceName,
    required this.price,
    required this.serviceTime,
  });

  toJson() {
    return {
      "ServiceName": serviceName,
      "SubServiceName": subServiceName,
      "Price": price,
      "ServiceTime": serviceTime,
    };
  }


// Step 1- Map user fetched from Firebase to UserModel
  factory ServicesModel.fromSnapshot(DocumentSnapshot<Map<String, dynamic>> document){
    final data = document.data()!;
    return ServicesModel(
        id: document.id,
        serviceName: data["ServiceName"],
        subServiceName: data["SubServiceName"],
        price: data["Price"],
        serviceTime: data["ServiceTime"]);
  }
}
