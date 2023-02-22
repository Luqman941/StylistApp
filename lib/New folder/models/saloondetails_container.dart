import 'package:flutter/material.dart';

class SaloonDetails_Container {

  final String bname;
  final String address;
  final double initialrating;
  final String distance;
  final AssetImage image;

  SaloonDetails_Container(
      {
      required this.bname,
      required this.address,
      required this.initialrating,
        required this.distance,
        required this.image,});
}
