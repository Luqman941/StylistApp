// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class Iconbutton extends StatelessWidget {
  final IconData icon;
  const Iconbutton({
    Key? key,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(6),
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.black),
          shape: BoxShape.circle),
      child: Icon(
        icon,
        color: const Color(0xffFCC5B3),
      ),
    );
  }
}

class AssetImageContainer extends StatelessWidget {
  final String img;
  const AssetImageContainer({
    Key? key,
    required this.img,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(),
      child: Image.asset(
        img,
        fit: BoxFit.cover,
      ),
    );
  }
}

class ImageContainer extends StatelessWidget {
  final String img;
  const ImageContainer({
    Key? key,
    required this.img,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(),
      child: Image.network(
        img,
        fit: BoxFit.cover,
        loadingBuilder: (BuildContext context, Widget child,
            ImageChunkEvent? loadingProgress) {
          if (loadingProgress == null) return child;
          return Center(
            child: CircularProgressIndicator(
              color: Colors.black,
              value: loadingProgress.expectedTotalBytes != null
                  ? loadingProgress.cumulativeBytesLoaded /
                      loadingProgress.expectedTotalBytes!
                  : null,
            ),
          );
        },
      ),
    );
  }
}

class Dots extends StatelessWidget {
  final bool isoutlined;

  const Dots({
    Key? key,
    required this.isoutlined,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 10,
      width: 10,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: isoutlined ? Colors.transparent : Colors.white,
          border: Border.all(
              color: isoutlined ? Colors.white : Colors.transparent)),
    );
  }
}

class Bottombar extends StatelessWidget {
  final String text;
  final VoidCallback ontap;
  const Bottombar({
    Key? key,
    required this.text,
    required this.ontap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      decoration: const BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black,
            ),
          ],
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20))),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: InkWell(
          onTap: ontap,
          child: Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: const Color(0xff61C0BF),
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.black)),
            child: Text(
              text,
              style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
