import 'package:flutter/material.dart';

class Main_Page_Custom_Container extends StatelessWidget {
  const Main_Page_Custom_Container({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0),
      child: Container(
        padding: EdgeInsets.all(20),
        height: 170,
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(width: 1),
            color: Color(0xffD7CAC6)),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "30% OFF",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                SizedBox(height: 10),
                Text("Super Offer"),
                SizedBox(height: 2),
                Text("Hair-Style & treatment"),
                Spacer(),
                Container(
                  height: 35,
                  width: 110,
                  decoration: BoxDecoration(
                      color: Color(0xffE0C3F6),
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(width: 1, color: Colors.black)),
                  child: Center(
                      child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Explore",
                      style: TextStyle(color: Colors.black),
                    ),
                  )),
                ),
              ],
            ),
            Spacer(),
            Container(
              height: 140,
              width: 140,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(250),
                  bottomRight: Radius.circular(80),
                  topLeft: Radius.circular(80),
                  bottomLeft: Radius.circular(250),
                ),
                color: Colors.pink,
                image: DecorationImage(
                  image: AssetImage("assets/pic1.jpeg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
