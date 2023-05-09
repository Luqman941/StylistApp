import 'package:flutter/material.dart';

import 'auth/log_in.dart';

class page_3 extends StatelessWidget {
  final VoidCallback onTapped;

  const page_3({super.key, required this.onTapped});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor:Colors.grey,

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    style: TextButton.styleFrom(
                      textStyle: const TextStyle(fontSize: 20),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Log_in(),
                          ));
                    },
                    child: const Text(
                      'Skip',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: Center(
                  child: Container(
                    height: 300,
                    width: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(250),
                        bottomRight: Radius.circular(80),
                        topLeft: Radius.circular(80),
                        bottomLeft: Radius.circular(250),
                      ),
                      color: Colors.pink,
                      image: DecorationImage(
                        image: AssetImage("assets/pic_one.jpeg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 100,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 30.0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Book your favrite",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 28),
                    ),
                    Text(
                      "Barbar Shop",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 28),
                    ),
                  ],
                ),
              ),
              // SizedBox(
              //   height: 40,
              // ),
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 15.0, bottom: 10),
                    child: Container(
                      height: 40,
                      width: 110,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 1.5),
                          borderRadius: BorderRadius.circular(25),
                          color: Color(0xff4D9DD0)),
                      child: TextButton(
                        style: TextButton.styleFrom(
                          textStyle: const TextStyle(fontSize: 20),
                        ),
                        onPressed: onTapped,
                        child: const Text(
                          'Next',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
    // return Scaffold(
    //   // backgroundColor:Colors.grey,
    //
    //   body: SingleChildScrollView(
    //     child: SafeArea(
    //       child: Column(
    //         crossAxisAlignment: CrossAxisAlignment.start,
    //         children: [
    //           Row(
    //             mainAxisAlignment: MainAxisAlignment.end,
    //             children: [
    //               TextButton(
    //                 style: TextButton.styleFrom(
    //                   textStyle: const TextStyle(fontSize: 20),
    //                 ),
    //                 onPressed: () {
    //                   Navigator.push(
    //                       context,
    //                       MaterialPageRoute(
    //                         builder: (context) => Sign_in(),
    //                       ));
    //                 },
    //                 child: const Text(
    //                   'Skip',
    //                   style: TextStyle(color: Colors.black),
    //                 ),
    //               ),
    //             ],
    //           ),
    //           SizedBox(
    //             height: 40,
    //           ),
    //           Center(
    //             child: Container(
    //               height: 300,
    //               width: 300,
    //               decoration: BoxDecoration(
    //                 borderRadius: BorderRadius.only(
    //                   topRight: Radius.circular(250),
    //                   bottomRight: Radius.circular(80),
    //                   topLeft: Radius.circular(80),
    //                   bottomLeft: Radius.circular(250),
    //                 ),
    //                 color: Colors.pink,
    //                 image: DecorationImage(
    //                   image: AssetImage("assets/images/pic_one.jpeg"),
    //                   fit: BoxFit.cover,
    //                 ),
    //               ),
    //             ),
    //           ),
    //           SizedBox(
    //             height: 100,
    //           ),
    //           Padding(
    //             padding: const EdgeInsets.only(
    //               left: 30.0,
    //             ),
    //             child: Column(
    //               crossAxisAlignment: CrossAxisAlignment.start,
    //               children: [
    //                 Text(
    //                   "Book Your Favorite",
    //                   style: TextStyle(
    //                       fontWeight: FontWeight.bold,
    //                       color: Colors.black,
    //                       fontSize: 28),
    //                 ),
    //                 Text(
    //                   "Barber Shop",
    //                   style: TextStyle(
    //                       fontWeight: FontWeight.bold,
    //                       color: Colors.black,
    //                       fontSize: 28),
    //                 ),
    //               ],
    //             ),
    //           ),
    //           SizedBox(
    //             height: 70,
    //           ),
    //           Row(
    //             mainAxisAlignment: MainAxisAlignment.end,
    //             children: [
    //               Padding(
    //                 padding: const EdgeInsets.only(right: 15.0, bottom: 10),
    //                 child: Container(
    //                   height: 40,
    //                   width: 110,
    //                   decoration: BoxDecoration(
    //                       border: Border.all(color: Colors.black, width: 1.5),
    //                       borderRadius: BorderRadius.circular(25),
    //                       color: Color(0xff4D9DD0)),
    //                   child: TextButton(
    //                     onPressed: onTapped,
    //                     child: const Text(
    //                       'Next',
    //                       style: TextStyle(color: Colors.white, fontSize: 16),
    //                     ),
    //                   ),
    //                 ),
    //               ),
    //             ],
    //           ),
    //         ],
    //       ),
    //     ),
    //   ),
    // );
  }
}
