import 'package:flutter/material.dart';

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
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage('assets/gMapLocation.png'),
          fit: BoxFit.cover,
        )),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 60.0),
            child: Column(
              children: [
                SizedBox(
                  height: 15,
                  width: 15,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      " Your Location",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 25),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 60,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      border: Border.all(width: 3, color: Colors.black)),
                  child: TextFormField(
                    decoration: InputDecoration(
                      icon: IconButton(
                          onPressed: () {},
                          iconSize: 30,
                          color: Colors.black,
                          icon: Icon(Icons.search_sharp)),
                      hintText: 'search',
                      hintStyle: TextStyle(fontSize: 25),
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
