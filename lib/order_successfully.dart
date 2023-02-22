import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:untitled6/ur_useabl_page.dart';

import 'bookedorder.dart';

enum Button {
  bookrohome,
  viewcode,
}

class orderSuccessfullyPage extends StatefulWidget {
  const orderSuccessfullyPage({Key? key}) : super(key: key);

  @override
  State<orderSuccessfullyPage> createState() => _orderSuccessfullyPageState();
}

class _orderSuccessfullyPageState extends State<orderSuccessfullyPage> {
  Button? selectedbutton;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 15, right: 15, top: 60),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 135,
                  width: 135,
                  child: Image.asset("assets/icon (1).png"),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Center(
                    child: Text(
                  "Order Successfully",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                )),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  "Lorem ipsum dolor sit amet, consectutor adipiscing elit.Sed faucibus",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Colors.black54),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 20,
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
                  height: 15,
                ),
                Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedbutton = Button.bookrohome;
                            Get.to(const bookOrderedPage());
                          });
                        },
                        child: Container(
                          height: 50,
                          decoration: BoxDecoration(
                            color: selectedbutton == Button.bookrohome
                                ? Colors.blue.withOpacity(.3)
                                : Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: Colors.black, width: 1),
                          ),
                          child: Center(
                            child: Text(
                              "Book to home",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: selectedbutton == Button.bookrohome
                                    ? Colors.white
                                    : Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedbutton = Button.viewcode;
                          });
                        },
                        child: Container(
                          height: 50,
                          decoration: BoxDecoration(
                            color: selectedbutton == Button.viewcode
                                ? Colors.blue.withOpacity(.3)
                                : Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: Colors.black, width: 1),
                          ),
                          child: Center(
                            child: Text(
                              "View Code",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  color: selectedbutton == Button.viewcode
                                      ? Colors.white
                                      : Colors.black),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
