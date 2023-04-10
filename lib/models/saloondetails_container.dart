import 'package:flutter/material.dart';

class SaloonDetailsContainer {

  final String bname;
  final String address;
  final double initialRating;
  final String distance;
  final AssetImage image;

  SaloonDetailsContainer(
      {
      required this.bname,
      required this.address,
      required this.initialRating,
        required this.distance,
        required this.image,});
}
