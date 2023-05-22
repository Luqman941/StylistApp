import 'package:flutter/material.dart';
import 'package:get/get.dart';

class YourLocation extends StatefulWidget {
  const YourLocation({Key? key}) : super(key: key);

  @override
  State<YourLocation> createState() => _YourLocationState();
}

class _YourLocationState extends State<YourLocation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage('assets/gMapLocation.png'),
          fit: BoxFit.cover,
        )),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              children: [
                const SizedBox(
                  height: 15,
                  width: 15,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      color: Colors.white,
                      child: Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Get.back();
                            },
                            child: const Icon(
                              Icons.arrow_back_ios_new,
                              size: 20,
                              color: Colors.black,
                            ),
                          ),
                          const SizedBox(width: 20),
                          const Text(
                            'Your Location',
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),

                // Search Containor
                Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25),
                      border: Border.all(width: 1, color: Colors.black)),
                  child: TextFormField(
                    decoration: InputDecoration(
                      icon: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.search_sharp,
                            size: 30,
                          )),
                      hintText: "Search",
                      border: InputBorder.none,
                    ),
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
