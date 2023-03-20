import 'package:flutter/material.dart';

class your_location extends StatefulWidget {
  const your_location({Key? key}) : super(key: key);

  @override
  State<your_location> createState() => _your_locationState();
}

class _your_locationState extends State<your_location> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage('assets/download(15).png'),
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
