import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled6/New%20folder/reusable_card_page.dart';

import 'order_summary.dart';

class YourAppointment extends StatelessWidget {
  const YourAppointment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
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
                      "Your appointment",
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
                          height: 100,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: Colors.black, width: 1),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 10, right: 10, top: 10, bottom: 10),
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
                                              "assets/style1.jpeg"),
                                          fit: BoxFit.cover)),
                                ),
                                Padding(
                                    padding: const EdgeInsets.only(left: 8),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: const [
                                            Text(
                                              "Fade O' Clock Barber",
                                              style: TextStyle(
                                                fontSize: 17,
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
                                        Row(
                                          children: const [
                                            Icon(
                                              Icons.location_on_outlined,
                                              color: Colors.black,
                                            ),
                                            Text(
                                              "2464 Royal Ln, Messa New...",
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.black54),
                                            )
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Image.asset(
                                              "assets/5_arrow.png",
                                              color: Colors.blue,
                                              height: 20,
                                              width: 20,
                                            ),
                                            SizedBox(
                                              width: 8,
                                            ),
                                            const Text(
                                              "5 Km",
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w300),
                                            ),
                                          ],
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
                      children: [
                        const Text(
                          "Date & Time",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const Text(
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
                      children: [
                        const Text(
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
                const ReusableCardPage(),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  children: const [
                    Text(
                      "Total Price",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Spacer(),
                    Text(
                      "\$ 99.00",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                const Text("Coupon Code",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    )),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  keyboardType: const TextInputType.numberWithOptions(),
                  decoration: InputDecoration(
                      suffixIcon: Container(
                        height: 60,
                        width: 80,
                        decoration: BoxDecoration(
                            color: Colors.purple.withOpacity(.3),
                            border: Border.all(color: Colors.black),
                            borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                            )),
                        child: const Center(
                          child: Text(
                            "Apply",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      labelText: "Enter Code",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      )),
                ),
                const SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(const OrderSummary());
                  },
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.blue.withOpacity(.3),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.black, width: 1)),
                    child: const Center(
                      child: Text(
                        "Continue",
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
          ),
        ),
      ),
    );
  }
}

class reuse extends StatelessWidget {
  const reuse({Key? key, required this.text, this.texts, required this.textd})
      : super(key: key);
  final String text;
  final String? texts;
  final String textd;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10, top: 10),
      child: Row(
        children: [
          Text(
            text,
            style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
          ),
          const Spacer(),
          texts != null
              ? Text(
                  texts!,
                  style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: Colors.black54),
                )
              : Container(),
          const SizedBox(
            width: 8,
          ),
          Text(
            textd,
            style: const TextStyle(
                fontSize: 15, fontWeight: FontWeight.w500, color: Colors.black),
          )
        ],
      ),
    );
  }
}
