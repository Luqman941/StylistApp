import 'package:flutter/material.dart';
import 'package:sliding_sheet/sliding_sheet.dart';
import 'package:untitled6/ur_useabl_page.dart';

import 'bottom_sheet.dart';

class bookOrderedPage extends StatefulWidget {
  const bookOrderedPage({Key? key}) : super(key: key);

  @override
  State<bookOrderedPage> createState() => _bookOrderedPageState();
}

class _bookOrderedPageState extends State<bookOrderedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
            child: Padding(
          padding: const EdgeInsets.only(
            left: 15,
            right: 15,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: const [
                  Icon(
                    Icons.arrow_back_ios_new,
                    size: 20,
                  ),
                  SizedBox(
                    width: 35,
                  ),
                  Text(
                    "Detail",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                height: 110,
                decoration: BoxDecoration(
                  color: Colors.blue.withOpacity(.3),
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.black, width: 1),
                ),
                child: Stack(
                  children: [
                    Container(
                        height: 112,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: Colors.black, width: 1),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 10, right: 10, top: 8, bottom: 10),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                height: 70,
                                width: 70,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: const DecorationImage(
                                        image: AssetImage(
                                            "assets/download (8).jpeg"),
                                        fit: BoxFit.cover)),
                              ),
                              Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: const [
                                          Text(
                                            "Beauty Bounty",
                                            style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          SizedBox(width: 35),
                                          Icon(
                                            Icons.star_border,
                                            color: Colors.yellow,
                                            size: 10,
                                          ),
                                          Text(
                                            "5.0",
                                            style: TextStyle(
                                              fontSize: 15,
                                            ),
                                          )
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 8,
                                      ),
                                      const Text(
                                        "Mens Hair cut, Hair spa, oil trea...",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black54),
                                      ),
                                      Row(
                                        children: const [
                                          Icon(Icons.lock_clock),
                                          Text(
                                            "Mon, 12 Aug 2022 - 10:00 AM",
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w300),
                                          ),
                                        ],
                                      ),
                                      Container(
                                        height: 20,
                                        width: 100,
                                        decoration: BoxDecoration(
                                          color: Colors.purple.withOpacity(.3),
                                          border: Border.all(
                                              color: Colors.black, width: 1),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        child: const Center(
                                          child: Text(
                                            "Upcoming",
                                          ),
                                        ),
                                      )
                                    ],
                                  )),
                            ],
                          ),
                        )),
                  ],
                ),
              ),
              const SizedBox(
                height: 35,
              ),
              Container(
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.black, width: 1),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 12, right: 12, top: 10, bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "Date & Time",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        "Mon,12 Aug - 10:00 AM",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w300,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.black, width: 1),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 15, right: 15, top: 10, bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "Gender Type",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const Text(
                        "Man",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w300,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const reusablecardPage(),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: const [
                  Text(
                    "Total item(3)",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Colors.black54),
                  ),
                  Spacer(),
                  Text(
                    "\$ 99.00",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Divider(
                color: Colors.black12,
                thickness: 1,
              ),
              const SizedBox(
                height: 8,
              ),
              Row(
                children: const [
                  Text("Coupon Discount",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Colors.black54,
                      )),
                  Spacer(),
                  Text(
                    "-\$ 05.00 ",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Divider(
                thickness: 1,
                color: Colors.black12,
              ),
              Row(
                children: const [
                  Text("Total Price",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      )),
                  Spacer(),
                  Text(
                    "-\$ 05.00 ",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 35,
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.blue.withOpacity(.3),
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.black, width: 1)),
                  child: const Center(
                    child: Text(
                      "Back to home",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        )),
      ),
    );
  }
}
