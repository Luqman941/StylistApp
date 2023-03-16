import 'package:flutter/material.dart';


class appointment_details extends StatelessWidget {
  const appointment_details({Key? key}) : super(key: key);

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
                                "Appointment Details",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                ),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Container(
                              height: 110,
                              decoration: BoxDecoration(
                                color: Colors.blue.withOpacity(.3),
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                    color: Colors.black, width: 1),
                              ),
                              child: Stack(
                                children: [
                                  Container(
                                      height: 100,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(8),
                                        border: Border.all(color: Colors.black,
                                            width: 1),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            left: 10,
                                            right: 10,
                                            top: 10,
                                            bottom: 10),
                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment
                                              .start,
                                          mainAxisAlignment: MainAxisAlignment
                                              .start,
                                          children: [
                                            Container(
                                              height: 70,
                                              width: 70,
                                              decoration: BoxDecoration(
                                                  borderRadius: BorderRadius
                                                      .circular(10),
                                                  image: const DecorationImage(
                                                      image: AssetImage(
                                                          "assets/download (8).jpeg"),
                                                      fit: BoxFit.cover)),
                                            ),
                                            Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 8),
                                                child: Column(
                                                  crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                                  children: [
                                                    Row(
                                                      children: const [
                                                        Text(
                                                          "Fayaz Khan",
                                                          style: TextStyle(
                                                            fontSize: 17,
                                                            fontWeight: FontWeight
                                                                .w500,
                                                          ),
                                                        ),
                                                        SizedBox(width: 35),
                                                        Icon(
                                                          Icons.star_border,
                                                          color: Colors.yellow,
                                                          size: 10,
                                                        ),
                                                      ],
                                                    ),
                                                    const SizedBox(
                                                      height: 8,
                                                    ),
                                                    Row(
                                                      children: const [
                                                        Icon(
                                                          Icons
                                                              .location_on_outlined,
                                                          color: Colors.black,
                                                        ),
                                                        Text(
                                                          "MianKhel Kohat",
                                                          style: TextStyle(
                                                              fontSize: 15,
                                                              fontWeight: FontWeight
                                                                  .w500,
                                                              color: Colors
                                                                  .black54),
                                                        )
                                                      ],
                                                    ),

                                                  ],
                                                )),
                                          ],
                                        ),
                                      )),
                                ],
                              )),

                          SizedBox(
                            height: 15,
                          ),
                          Container(
                              height: 110,
                              decoration: BoxDecoration(
                                color: Colors.blue.withOpacity(.3),
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                    color: Colors.black, width: 1),
                              ),
                              child: Stack(
                                children: [
                                  Container(
                                      height: 100,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(8),
                                        border: Border.all(color: Colors.black,
                                            width: 1),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            left: 10,
                                            right: 10,
                                            top: 10,
                                            bottom: 10),
                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment
                                              .start,
                                          mainAxisAlignment: MainAxisAlignment
                                              .start,
                                          children: [
                                            Container(
                                              height: 70,
                                              width: 70,
                                              decoration: BoxDecoration(
                                                  borderRadius: BorderRadius
                                                      .circular(10),
                                                  image: const DecorationImage(
                                                      image: AssetImage(
                                                          "assets/download (8).jpeg"),
                                                      fit: BoxFit.cover)),
                                            ),
                                            Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 8),
                                                child: Column(
                                                  crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                                  children: [
                                                    Row(
                                                      children: const [
                                                        Text(
                                                          "Luqman Khan",
                                                          style: TextStyle(
                                                            fontSize: 17,
                                                            fontWeight: FontWeight
                                                                .w500,
                                                          ),
                                                        ),
                                                        SizedBox(width: 35),
                                                        Icon(
                                                          Icons.star_border,
                                                          color: Colors.yellow,
                                                          size: 10,
                                                        ),
                                                      ],
                                                    ),
                                                    const SizedBox(
                                                      height: 8,
                                                    ),
                                                    Row(
                                                      children: const [
                                                        Icon(
                                                          Icons
                                                              .location_on_outlined,
                                                          color: Colors.black,
                                                        ),
                                                        Text(
                                                          "MianKhel Kohat",
                                                          style: TextStyle(
                                                              fontSize: 15,
                                                              fontWeight: FontWeight
                                                                  .w500,
                                                              color: Colors
                                                                  .black54),
                                                        )
                                                      ],
                                                    ),

                                                  ],
                                                )),
                                          ],
                                        ),
                                      )),
                                ],
                              ))
                        ],),),),),);
  }}
