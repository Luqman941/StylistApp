import 'package:flutter/material.dart';

class SalonDetailsContainer {
  final String salonName;
  final String address;
  final double initialRating;
  final String distance;
  final AssetImage image;

  SalonDetailsContainer({
    required this.salonName,
    required this.address,
    required this.initialRating,
    required this.distance,
    required this.image,
  });
}
