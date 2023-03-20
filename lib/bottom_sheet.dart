import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:untitled6/updated_page.dart';

import 'order_successfully.dart';

enum selectedmethod {
  paypal(),
  // visacard,
  // paaytm,
  // cashshop;
}

class bottomSheet extends StatefulWidget {
  const bottomSheet({Key? key}) : super(key: key);

  @override
  State<bottomSheet> createState() => _bottomSheetState();
}

class _bottomSheetState extends State<bottomSheet> {
  selectedmethod? selected;
  @override
  Widget build(BuildContext context) {
    updatedPage updatpro = Get.put(updatedPage());
    return Material(
      child: Container(
        // height: 500,
        child: Padding(
          padding: EdgeInsets.only(left: 15, right: 15, top: 15),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  Text(
                    "Choose your Payement Option",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Spacer(),
                  Icon(
                    Icons.close,
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Select any option suitable for you to complete the payement process",
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Colors.black54),
              ),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    selected = selectedmethod.paypal;
                  });
                },
                child: multiupdatwidget(
                  images: "assets/images/st1.png",
                  text: "Strip",
                  colr: selected == selectedmethod.paypal
                      ? Colors.purple.withOpacity(.3)
                      : Colors.white,
                  colrs: selected == selectedmethod.paypal
                      ? Colors.black
                      : Colors.white,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              // GestureDetector(
              //   onTap: () {
              //     setState(() {
              //       selected = selectedmethod.visacard;
              //     });
              //   },
              //   child: multiupdatwidget(
              //     images: "assets/download__2_-removebg-preview.png",
              //     text: "Visa Card",
              //     colr: selected == selectedmethod.visacard
              //         ? Colors.purple.withOpacity(.3)
              //         : Colors.white,
              //     colrs: selected == selectedmethod.visacard
              //         ? Colors.black
              //         : Colors.white,
              //   ),
              // ),
              SizedBox(
                height: 15,
              ),
              // GestureDetector(
              //     onTap: () {
              //       setState(() {
              //         selected = selectedmethod.paaytm;
              //       });
              //     },
              //     child: multiupdatwidget(
              //       images: "assets/download__3_-removebg-preview.png",
              //       text: "Paytm",
              //       colr: selected == selectedmethod.paaytm
              //           ? Colors.purple.withOpacity(.3)
              //           : Colors.white,
              //       colrs: selected == selectedmethod.paaytm
              //           ? Colors.black
              //           : Colors.white,
              //     )),

              // GestureDetector(
              //   onTap: () {
              //     setState(() {
              //       selected = selectedmethod.cashshop;
              //     });
              //   },
              //   child: multiupdatwidget(
              //       images: "assets/download__4_-removebg-preview.png",
              //       text: "Cash on Shop",
              //       colr: selected == selectedmethod.cashshop
              //           ? Colors.purple.withOpacity(.3)
              //           : Colors.white,
              //       colrs: selected == selectedmethod.cashshop
              //           ? Colors.black
              //           : Colors.white),
              // ),
              SizedBox(
                height: 35,
              ),
              GestureDetector(
                onTap: () {
                  // Get.to(orderSuccessfullyPage());
                },
                child: Container(
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.blue.withOpacity(.3),
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.black, width: 1),
                  ),
                  child: Center(
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
    );
  }
}

class multiupdatwidget extends StatelessWidget {
  multiupdatwidget({
    Key? key,
    required this.images,
    required this.text,
    required this.colr,
    required this.colrs,
  }) : super(key: key);
  final String images;
  final String text;
  final Color colr;
  final Color colrs;
  //selectedmethod? selected;
  @override
  Widget build(BuildContext context) {
    updatedPage updatpro = Get.put(updatedPage());
    return Material(
      child: Container(
        child: Container(
          height: 65,
          decoration: BoxDecoration(
            color: colr,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.black, width: 1),
          ),
          child: Padding(
            padding: EdgeInsets.only(left: 15, top: 5, bottom: 5, right: 15),
            child: Row(
              children: [
                Container(
                  width: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Colors.black),
                      image: DecorationImage(
                        image: AssetImage(images), //fit: BoxFit.cover,
                      )),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  text,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Spacer(),
                GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.black),
                      ),
                      child: Center(
                        child: Container(
                          height: 15,
                          width: 15,
                          decoration: BoxDecoration(
                            color: colrs,
                            // border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
