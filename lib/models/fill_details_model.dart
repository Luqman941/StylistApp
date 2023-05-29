import 'package:cloud_firestore/cloud_firestore.dart';

class FillDetailsModel {
  final String? id;
  final String shopName;
  final String address;
  final String location;
  final String holiday;

  const FillDetailsModel({
    this.id,
    required this.shopName,
    required this.address,
    required this.location,
    required this.holiday,
  });

  toJson() {
    return {
      "ShopName": shopName,
      "Address": address,
      "Location": location,
      "Holiday": holiday,
    };
  }


// Step 1- Map user fetched from Firebase to FillDetailsModel
  factory FillDetailsModel.fromSnapshot(DocumentSnapshot<Map<String, dynamic>> document){
    final data = document.data()!;
    return FillDetailsModel(
        id: document.id,
        shopName: data["ShopName"],
        address: data["Address"],
        location: data["Location"],
        holiday: data["Holiday"]);
  }
}
