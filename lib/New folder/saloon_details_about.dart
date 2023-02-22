import 'package:flutter/material.dart';
import 'package:untitled6/New%20folder/saloon_details_images.dart';

class Saloon_details_about extends StatefulWidget {
  @override
  State<Saloon_details_about> createState() => _Saloon_details_aboutState();
}

class _Saloon_details_aboutState extends State<Saloon_details_about> {
  // const Saloon_details_about({Key? key}) : super(key: key);
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 310,
              width: double.infinity,
              child: PageView(
                controller: _controller,
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                children: [
                  Saloon_details_images(),
                ],
              ),
            ),
            // Open Conatiner Row
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    " Fade 0'clock Barber",
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  Container(
                    height: 40,
                    width: 80,
                    decoration: BoxDecoration(
                        border: Border.all(width: 2, color: Colors.black),
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: Color(0xffE0C3F6)),
                    child: Center(
                        child: TextButton(
                      onPressed: () {
                        //Navigator.push(context, MaterialPageRoute(builder: (context) => ,));
                      },
                      child: Text(
                        "Open",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                            color: Colors.black),
                      ),
                    )),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                children: [
                  Icon(
                    Icons.location_on_outlined,
                    size: 25,
                  ),
                  Text(
                    "KDA kohat Sector 9 shop no 45",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.grey),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      // IconButton(
                      //   focusColor: Colors.amber,
                      //   icon: Icon(Icons.star_border_outlined),
                      //   onPressed: () {},
                      // ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "4.9",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "(76 Reviews)",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                  Spacer(),
                  Row(
                    children: [
                      Icon(Icons.label_important_outline_sharp),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Duration",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
