import 'package:flutter/material.dart';

class photo extends StatefulWidget {
  const photo({Key? key}) : super(key: key);

  @override
  State<photo> createState() => _photoState();
}

class _photoState extends State<photo> {
  List items = [
    'assets/favritesaloon.png',
    'assets/favritesaloon.png',
    'assets/favritesaloon.png',
    'assets/favritesaloon.png',
    'assets/favritesaloon.png',
    'assets/favritesaloon.png',
    'assets/favritesaloon.png',
    'assets/favritesaloon.png',
    'assets/favritesaloon.png',
    'assets/favritesaloon.png',
    'assets/favritesaloon.png',
    'assets/favritesaloon.png',
    'assets/favritesaloon.png',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              GridView.builder(
                  shrinkWrap: true,
                  //physics: NeverScrollableScrollPhysics(),
                  physics: const BouncingScrollPhysics(),
                  padding: const EdgeInsets.all(10),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10),
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    return Image.asset(
                      items[index],
                      height: 100,
                      width: 100,
                      fit: BoxFit.fill,
                    );
                  }),
              SizedBox(
                height: 30,
              ),
              Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(28),
                    color: Color(0xff4D9DD0),
                    border: Border.all(width: 2, color: Colors.black)),
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Book Now",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
