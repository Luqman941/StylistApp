import 'package:flutter/material.dart';
import 'package:untitled6/views/auth/your_location.dart';
import '../../../reusable_widgets/saloon_page_images_container/bottom_navigation_bar.dart';

class EnableLocationService extends StatelessWidget {
  const EnableLocationService({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Image

                Image.asset("assets/loactionIcon.png"),
                SizedBox(
                  height: 40,
                ),
                Text(
                  "Enable Location Services",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Turn on Location Services so we can show",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.grey),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "you whats nearby",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.grey),
                ),
                SizedBox(
                  height: 100,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Bottom()));
                  },
                  child: Container(
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Color(
                          0xff61C0BF,
                        ),
                        border: Border.all(width: 2, color: Colors.black)),
                    child: Center(
                        child: Text(
                      "Allow Location Access",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 15),
                    )),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => YourLocation()));
                  },
                  child: Container(
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Color(
                          0xff61C0BF,
                        ),
                        border: Border.all(width: 2, color: Colors.black)),
                    child: Center(
                        child: Text(
                      "Enter Location",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 15),
                    )),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
