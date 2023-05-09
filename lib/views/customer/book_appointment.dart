import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:velocity_x/velocity_x.dart';

class BookAppointment extends StatefulWidget {
  const BookAppointment({Key? key}) : super(key: key);

  @override
  State<BookAppointment> createState() => _BookAppointmentState();
}

class _BookAppointmentState extends State<BookAppointment>
    with TickerProviderStateMixin {
  late TabController controller;
  @override
  void initState() {

    super.initState();
    controller = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: GestureDetector(
              onTap: () {
                // Navigator.push(context, MaterialPageRoute(builder: (context) => ,));
              },
              child: const Icon(
                Icons.arrow_back_ios_new,
                color: Colors.black,
              )),
          title: const Text(
            " My Appointment Booking",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                child: TabBar(
                  controller: controller,
                  labelColor: Colors.black,
                  unselectedLabelColor: Colors.red,
                  tabs: [
                    const Tab(
                      text: 'All',
                    ),
                    const Tab(
                      text: 'Upcoming',
                    ),
                    const Tab(
                      text: 'Completed',
                    )
                  ],
                ),
              ),
              Container(
                height: 600,
                child: TabBarView(
                  controller: controller,
                  children: [
                    Container(
                      //color: Colors.amber,
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 40,
                            ),
                            Container(
                              padding: const EdgeInsets.all(18.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: 90,
                                        width: 70,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(12),
                                          image: const DecorationImage(
                                              image: AssetImage(
                                                  "assets/favoriteSalon.png"),
                                              fit: BoxFit.cover),
                                          border: Border.all(
                                              width: 2, color: Colors.black),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            right: 0, left: 0),
                                        child: Column(
                                          children: [
                                            const Text('Beauty Bounty',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w900,
                                                  fontSize: 15,
                                                )),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  right: 0, left: 12),
                                              child: Row(
                                                children: [
                                                  const Text(
                                                      'Mens hair cut ,Hair spa ,oil Treatment '),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  right: 25, left: 12),
                                              child: Row(
                                                children: [
                                                  const Icon(Icons.access_time),
                                                  const Text(
                                                      'Mon,12 Aug 2022-10:00 AM')
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  right: 25),
                                              child: Row(
                                                children: [
                                                  SizedBox(
                                                    height: 30,
                                                    width: 100,
                                                    child: ElevatedButton(
                                                      onPressed: () {},
                                                      style: ElevatedButton
                                                          .styleFrom(
                                                        backgroundColor:
                                                            const Color(
                                                                0xffE0C3F6),
                                                        side: const BorderSide(
                                                            width: 2,
                                                            color:
                                                                Colors.black),
                                                        shape: RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        20)),
                                                      ),
                                                      child: const Text(
                                                        "Running",
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 12),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              //color: Colors.amber,
                              child: Column(
                                children: [
                                  const SizedBox(
                                    height: 40,
                                  ),
                                  Container(
                                    padding: const EdgeInsets.all(18.0),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      border: Border.all(),
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              height: 90,
                                              width: 70,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(12),
                                                image: const DecorationImage(
                                                    image: AssetImage(
                                                        "assets/favoriteSalon.png"),
                                                    fit: BoxFit.cover),
                                                border: Border.all(
                                                    width: 2,
                                                    color: Colors.black),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  right: 0, left: 0),
                                              child: Column(
                                                children: [
                                                  const Text('Barber Bandtis',
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w900,
                                                        fontSize: 15,
                                                      )),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            right: 0, left: 12),
                                                    child: Row(
                                                      children: [
                                                        const Text(
                                                            'Mens hair cut ,Hair spa ,oil Treatment '),
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            right: 25,
                                                            left: 12),
                                                    child: Row(
                                                      children: [
                                                        const Icon(
                                                            Icons.access_time),
                                                        const Text(
                                                            'Mon,12 Aug 2022-10:00 AM')
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            right: 25,
                                                            left: 12),
                                                    child: Row(
                                                      children: [
                                                        SizedBox(
                                                          height: 30,
                                                          width: 100,
                                                          child: ElevatedButton(
                                                            onPressed: () {},
                                                            style:
                                                                ElevatedButton
                                                                    .styleFrom(
                                                              backgroundColor:
                                                                  const Color(
                                                                      0xffE0C3F6),
                                                              side: const BorderSide(
                                                                  width: 2,
                                                                  color: Colors
                                                                      .black),
                                                              shape: RoundedRectangleBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              20)),
                                                            ),
                                                            child: const Text(
                                                              "Completed",
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .black,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  fontSize: 12),
                                                            ),
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          height: 30,
                                                          width: 100,
                                                          child: ElevatedButton(
                                                            onPressed: () {},
                                                            style:
                                                                ElevatedButton
                                                                    .styleFrom(
                                                              backgroundColor:
                                                                  const Color(
                                                                      0xffE0C3F6),
                                                              side: const BorderSide(
                                                                  width: 2,
                                                                  color: Colors
                                                                      .black),
                                                              shape: RoundedRectangleBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              20)),
                                                            ),
                                                            child: const Text(
                                                              "Review",
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .black,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  fontSize: 12),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    //color: Colors.amber,
                                    child: Column(
                                      children: [
                                        const SizedBox(
                                          height: 40,
                                        ),
                                        Container(
                                          padding: const EdgeInsets.all(18.0),
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            border: Border.all(),
                                          ),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    height: 90,
                                                    width: 70,
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12),
                                                      image: const DecorationImage(
                                                          image: AssetImage(
                                                              "assets/favoriteSalon.png"),
                                                          fit: BoxFit.cover),
                                                      border: Border.all(
                                                          width: 2,
                                                          color: Colors.black),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            right: 0, left: 0),
                                                    child: Column(
                                                      children: [
                                                        const Text('Gold Comb',
                                                            style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w900,
                                                              fontSize: 15,
                                                            )),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                      .only(
                                                                  right: 0,
                                                                  left: 12),
                                                          child: Row(
                                                            children: [
                                                              const Text(
                                                                  'Mens hair cut ,Hair spa ,oil Treatment '),
                                                            ],
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                      .only(
                                                                  right: 25,
                                                                  left: 12),
                                                          child: Row(
                                                            children: [
                                                              const Icon(Icons
                                                                  .access_time),
                                                              const Text(
                                                                  'Mon,12 Aug 2022-10:00 AM')
                                                            ],
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                      .only(
                                                                  right: 25,
                                                                  left: 12),
                                                          child: Row(
                                                            children: [
                                                              SizedBox(
                                                                height: 30,
                                                                width: 100,
                                                                child:
                                                                    ElevatedButton(
                                                                  onPressed:
                                                                      () {},
                                                                  style: ElevatedButton
                                                                      .styleFrom(
                                                                    backgroundColor:
                                                                        const Color(
                                                                            0xffE0C3F6),
                                                                    side: const BorderSide(
                                                                        width:
                                                                            2,
                                                                        color: Colors
                                                                            .black),
                                                                    shape: RoundedRectangleBorder(
                                                                        borderRadius:
                                                                            BorderRadius.circular(20)),
                                                                  ),
                                                                  child:
                                                                      const Text(
                                                                    "Pending",
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .black,
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .bold,
                                                                        fontSize:
                                                                            12),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          //color: Colors.amber,
                                          child: Column(
                                            children: [
                                              const SizedBox(
                                                height: 40,
                                              ),
                                              Container(
                                                padding:
                                                    const EdgeInsets.all(18.0),
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                  border: Border.all(),
                                                ),
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Row(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Container(
                                                          height: 90,
                                                          width: 70,
                                                          decoration:
                                                              BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        12),
                                                            image: const DecorationImage(
                                                                image: AssetImage(
                                                                    "assets/favoriteSalon.png"),
                                                                fit: BoxFit
                                                                    .cover),
                                                            border: Border.all(
                                                                width: 2,
                                                                color: Colors
                                                                    .black),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                      .only(
                                                                  right: 0,
                                                                  left: 0),
                                                          child: Column(
                                                            children: [
                                                              const Text(
                                                                  'Next Level Luxury',
                                                                  style:
                                                                      TextStyle(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w900,
                                                                    fontSize:
                                                                        15,
                                                                  )),
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                            .only(
                                                                        right:
                                                                            0,
                                                                        left:
                                                                            12),
                                                                child: Row(
                                                                  children: [
                                                                    const Text(
                                                                        'Mens hair cut ,Hair spa ,oil Treatment '),
                                                                  ],
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                            .only(
                                                                        right:
                                                                            25,
                                                                        left:
                                                                            12),
                                                                child: Row(
                                                                  children: [
                                                                    const Icon(Icons
                                                                        .access_time),
                                                                    const Text(
                                                                        'Mon,12 Aug 2022-10:00 AM')
                                                                  ],
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                            .only(
                                                                        right:
                                                                            25,
                                                                        left:
                                                                            12),
                                                                child: Row(
                                                                  children: [
                                                                    SizedBox(
                                                                      height:
                                                                          30,
                                                                      width:
                                                                          100,
                                                                      child:
                                                                          ElevatedButton(
                                                                        onPressed:
                                                                            () {},
                                                                        style: ElevatedButton
                                                                            .styleFrom(
                                                                          backgroundColor:
                                                                              const Color(0xffE0C3F6),
                                                                          side: const BorderSide(
                                                                              width: 2,
                                                                              color: Colors.black),
                                                                          shape:
                                                                              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                                                                        ),
                                                                        child:
                                                                            const Text(
                                                                          "upcoming",
                                                                          style: TextStyle(
                                                                              color: Colors.black,
                                                                              fontWeight: FontWeight.bold,
                                                                              fontSize: 12),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              )
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      color: Colors.white,
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 40,
                            ),
                            Container(
                              padding: const EdgeInsets.all(18.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: 90,
                                        width: 70,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(12),
                                          image: const DecorationImage(
                                              image: AssetImage(
                                                  "assets/favoriteSalon.png"),
                                              fit: BoxFit.cover),
                                          border: Border.all(
                                              width: 2, color: Colors.black),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            right: 0, left: 0),
                                        child: Column(
                                          children: [
                                            const Text('Next Level Luxury',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w900,
                                                  fontSize: 15,
                                                )),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  right: 0, left: 12),
                                              child: Row(
                                                children: [
                                                  const Text(
                                                      'Mens hair cut ,Hair spa ,oil Treatment '),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  right: 25, left: 12),
                                              child: Row(
                                                children: [
                                                  const Icon(Icons.access_time),
                                                  const Text(
                                                      'Mon,12 Aug 2022-10:00 AM')
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  right: 25),
                                              child: Row(
                                                children: [
                                                  SizedBox(
                                                    height: 30,
                                                    width: 100,
                                                    child: ElevatedButton(
                                                      onPressed: () {},
                                                      style: ElevatedButton
                                                          .styleFrom(
                                                        backgroundColor:
                                                            const Color(
                                                                0xffE0C3F6),
                                                        side: const BorderSide(
                                                            width: 2,
                                                            color:
                                                                Colors.black),
                                                        shape: RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        20)),
                                                      ),
                                                      child: const Text(
                                                        "upcoming",
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 12),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              //color: Colors.amber,
                              child: Column(
                                children: [
                                  const SizedBox(
                                    height: 40,
                                  ),
                                  Container(
                                    padding: const EdgeInsets.all(18.0),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      border: Border.all(),
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              height: 90,
                                              width: 70,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(12),
                                                image: const DecorationImage(
                                                    image: AssetImage(
                                                        "assets/favoriteSalon.png"),
                                                    fit: BoxFit.cover),
                                                border: Border.all(
                                                    width: 2,
                                                    color: Colors.black),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  right: 0, left: 0),
                                              child: Column(
                                                children: [
                                                  const Text(
                                                      'Next Level Luxury',
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w900,
                                                        fontSize: 15,
                                                      )),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            right: 0, left: 12),
                                                    child: Row(
                                                      children: [
                                                        const Text(
                                                            'Mens hair cut ,Hair spa ,oil Treatment '),
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            right: 25,
                                                            left: 12),
                                                    child: Row(
                                                      children: [
                                                        const Icon(
                                                            Icons.access_time),
                                                        const Text(
                                                            'Mon,12 Aug 2022-10:00 AM')
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            right: 25,
                                                            left: 12),
                                                    child: Row(
                                                      children: [
                                                        SizedBox(
                                                          height: 30,
                                                          width: 100,
                                                          child: ElevatedButton(
                                                            onPressed: () {},
                                                            style:
                                                                ElevatedButton
                                                                    .styleFrom(
                                                              backgroundColor:
                                                                  const Color(
                                                                      0xffE0C3F6),
                                                              side: const BorderSide(
                                                                  width: 2,
                                                                  color: Colors
                                                                      .black),
                                                              shape: RoundedRectangleBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              20)),
                                                            ),
                                                            child: const Text(
                                                              "upcoming",
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .black,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  fontSize: 12),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    //color: Colors.amber,
                                    child: Column(
                                      children: [
                                        const SizedBox(
                                          height: 40,
                                        ),
                                        Container(
                                          padding: const EdgeInsets.all(18.0),
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            border: Border.all(),
                                          ),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    height: 90,
                                                    width: 70,
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12),
                                                      image: const DecorationImage(
                                                          image: AssetImage(
                                                              "assets/favoriteSalon.png"),
                                                          fit: BoxFit.cover),
                                                      border: Border.all(
                                                          width: 2,
                                                          color: Colors.black),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            right: 0, left: 0),
                                                    child: Column(
                                                      children: [
                                                        const Text(
                                                            'Next Level Luxury',
                                                            style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w900,
                                                              fontSize: 15,
                                                            )),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                      .only(
                                                                  right: 0,
                                                                  left: 12),
                                                          child: Row(
                                                            children: [
                                                              const Text(
                                                                  'Mens hair cut ,Hair spa ,oil Treatment '),
                                                            ],
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                      .only(
                                                                  right: 25,
                                                                  left: 12),
                                                          child: Row(
                                                            children: [
                                                              const Icon(Icons
                                                                  .access_time),
                                                              const Text(
                                                                  'Mon,12 Aug 2022-10:00 AM')
                                                            ],
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                      .only(
                                                                  right: 25,
                                                                  left: 12),
                                                          child: Row(
                                                            children: [
                                                              SizedBox(
                                                                height: 30,
                                                                width: 100,
                                                                child:
                                                                    ElevatedButton(
                                                                  onPressed:
                                                                      () {},
                                                                  style: ElevatedButton
                                                                      .styleFrom(
                                                                    backgroundColor:
                                                                        const Color(
                                                                            0xffE0C3F6),
                                                                    side: const BorderSide(
                                                                        width:
                                                                            2,
                                                                        color: Colors
                                                                            .black),
                                                                    shape: RoundedRectangleBorder(
                                                                        borderRadius:
                                                                            BorderRadius.circular(20)),
                                                                  ),
                                                                  child:
                                                                      const Text(
                                                                    "Upcoming",
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .black,
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .bold,
                                                                        fontSize:
                                                                            12),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          //color: Colors.amber,
                                          child: Column(
                                            children: [
                                              const SizedBox(
                                                height: 40,
                                              ),
                                              Container(
                                                padding:
                                                    const EdgeInsets.all(18.0),
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                  border: Border.all(),
                                                ),
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Row(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Container(
                                                          height: 90,
                                                          width: 70,
                                                          decoration:
                                                              BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        12),
                                                            image: const DecorationImage(
                                                                image: AssetImage(
                                                                    "assets/favoriteSalon.png"),
                                                                fit: BoxFit
                                                                    .cover),
                                                            border: Border.all(
                                                                width: 2,
                                                                color: Colors
                                                                    .black),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                      .only(
                                                                  right: 0,
                                                                  left: 0),
                                                          child: Column(
                                                            children: [
                                                              const Text(
                                                                  'Next Level Luxury',
                                                                  style:
                                                                      TextStyle(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w900,
                                                                    fontSize:
                                                                        15,
                                                                  )),
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                            .only(
                                                                        right:
                                                                            0,
                                                                        left:
                                                                            12),
                                                                child: Row(
                                                                  children: [
                                                                    const Text(
                                                                        'Mens hair cut ,Hair spa ,oil Treatment '),
                                                                  ],
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                            .only(
                                                                        right:
                                                                            25,
                                                                        left:
                                                                            12),
                                                                child: Row(
                                                                  children: [
                                                                    const Icon(Icons
                                                                        .access_time),
                                                                    const Text(
                                                                        'Mon,12 Aug 2022-10:00 AM')
                                                                  ],
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                            .only(
                                                                        right:
                                                                            25,
                                                                        left:
                                                                            12),
                                                                child: Row(
                                                                  children: [
                                                                    SizedBox(
                                                                      height:
                                                                          30,
                                                                      width:
                                                                          100,
                                                                      child:
                                                                          ElevatedButton(
                                                                        onPressed:
                                                                            () {},
                                                                        style: ElevatedButton
                                                                            .styleFrom(
                                                                          backgroundColor:
                                                                              const Color(0xffE0C3F6),
                                                                          side: const BorderSide(
                                                                              width: 2,
                                                                              color: Colors.black),
                                                                          shape:
                                                                              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                                                                        ),
                                                                        child:
                                                                            const Text(
                                                                          "upcoming",
                                                                          style: TextStyle(
                                                                              color: Colors.black,
                                                                              fontWeight: FontWeight.bold,
                                                                              fontSize: 12),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              )
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    //completed Screen
                    GestureDetector(
                      onTap: () => VxBottomSheet.bottomSheetView(
                        context,
                        backgroundColor: Colors.white,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Write a review"),
                                CloseButton(),
                              ],
                            ),
                            Divider(),
                            Row(
                              children: [Text('Enter Your Opinion')],
                            ),
                            RatingBar(
                              initialRating: 3,
                              minRating: 1,
                              glowColor: Colors.yellow,
                              direction: Axis.horizontal,
                              allowHalfRating: true,
                              itemCount: 5,
                              // unratedColor: Colors.white,
                              itemPadding:
                                  EdgeInsets.symmetric(horizontal: 4.0),
                              ratingWidget: RatingWidget(
                                  full: Icon(
                                    Icons.star,
                                    color: Colors.yellow,
                                    shadows: [
                                      BoxShadow(
                                        color: Colors.black,
                                      )
                                    ],
                                  ),
                                  half: SizedBox(),
                                  empty: Icon(
                                    Icons.star_border_outlined,
                                    color: Colors.black,
                                  )),
                              onRatingUpdate: (rating) {
                                print(rating);
                              },
                            ),
                            Row(
                              children: [Text('Enter Your Opinion')],
                            ),
                            VxTextField(
                              maxLine: 6,
                              borderType: VxTextFieldBorderType.roundLine,
                              borderColor: Colors.white,
                              hint: "Message...",
                            ),
                            SizedBox(
                              height: 40,
                            ),
                            Container(
                              height: 50,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(28),
                                  color: Color(0xff4D9DD0),
                                  border: Border.all(
                                      width: 2, color: Colors.black)),
                              child: TextButton(
                                onPressed: () {},
                                child: Text(
                                  "Apply",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontSize: 20),
                                ),
                              ),
                            ),
                          ],
                        ).pSymmetric(h: 15, v: 5),
                      ),
                      child: Container(
                        color: Colors.white,
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 40,
                              ),
                              Container(
                                padding: const EdgeInsets.all(18.0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          height: 90,
                                          width: 70,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(12),
                                            image: const DecorationImage(
                                                image: AssetImage(
                                                    "assets/favoriteSalon.png"),
                                                fit: BoxFit.cover),
                                            border: Border.all(
                                                width: 2, color: Colors.black),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              right: 0, left: 0),
                                          child: Column(
                                            children: [
                                              const Text('Beauty Bounty',
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w900,
                                                    fontSize: 15,
                                                  )),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    right: 0, left: 12),
                                                child: Row(
                                                  children: [
                                                    const Text(
                                                        'Mens hair cut ,Hair spa ,oil Treatment '),
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    right: 25, left: 12),
                                                child: Row(
                                                  children: [
                                                    const Icon(
                                                        Icons.access_time),
                                                    const Text(
                                                        'Mon,12 Aug 2022-10:00 AM')
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    right: 25),
                                                child: Row(
                                                  children: [
                                                    SizedBox(
                                                      height: 30,
                                                      width: 100,
                                                      child: ElevatedButton(
                                                        onPressed: () {},
                                                        style: ElevatedButton
                                                            .styleFrom(
                                                          backgroundColor:
                                                              const Color(
                                                                  0xffE0C3F6),
                                                          side:
                                                              const BorderSide(
                                                                  width: 2,
                                                                  color: Colors
                                                                      .black),
                                                          shape: RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          20)),
                                                        ),
                                                        child: const Text(
                                                          "completed",
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.black,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              fontSize: 12),
                                                        ),
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      height: 30,
                                                      width: 100,
                                                      child: ElevatedButton(
                                                        onPressed: () {},
                                                        style: ElevatedButton
                                                            .styleFrom(
                                                          backgroundColor:
                                                              const Color(
                                                                  0xffE0C3F6),
                                                          side:
                                                              const BorderSide(
                                                                  width: 2,
                                                                  color: Colors
                                                                      .black),
                                                          shape: RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          20)),
                                                        ),
                                                        child: const Text(
                                                          "Review",
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.black,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              fontSize: 12),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                //color: Colors.amber,
                                child: Column(
                                  children: [
                                    const SizedBox(
                                      height: 40,
                                    ),
                                    Container(
                                      padding: const EdgeInsets.all(18.0),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        border: Border.all(),
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                height: 90,
                                                width: 70,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(12),
                                                  image: const DecorationImage(
                                                      image: AssetImage(
                                                          "assets/favoriteSalon.png"),
                                                      fit: BoxFit.cover),
                                                  border: Border.all(
                                                      width: 2,
                                                      color: Colors.black),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    right: 0, left: 0),
                                                child: Column(
                                                  children: [
                                                    const Text('Barber Bandtis',
                                                        style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w900,
                                                          fontSize: 15,
                                                        )),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              right: 0,
                                                              left: 12),
                                                      child: Row(
                                                        children: [
                                                          const Text(
                                                              'Mens hair cut ,Hair spa ,oil Treatment '),
                                                        ],
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              right: 25,
                                                              left: 12),
                                                      child: Row(
                                                        children: [
                                                          const Icon(Icons
                                                              .access_time),
                                                          const Text(
                                                              'Mon,12 Aug 2022-10:00 AM')
                                                        ],
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              right: 25,
                                                              left: 12),
                                                      child: Row(
                                                        children: [
                                                          SizedBox(
                                                            height: 30,
                                                            width: 100,
                                                            child:
                                                                ElevatedButton(
                                                              onPressed: () {},
                                                              style:
                                                                  ElevatedButton
                                                                      .styleFrom(
                                                                backgroundColor:
                                                                    const Color(
                                                                        0xffE0C3F6),
                                                                side: const BorderSide(
                                                                    width: 2,
                                                                    color: Colors
                                                                        .black),
                                                                shape: RoundedRectangleBorder(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            20)),
                                                              ),
                                                              child: const Text(
                                                                "Completed",
                                                                style: TextStyle(
                                                                    color: Colors
                                                                        .black,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    fontSize:
                                                                        12),
                                                              ),
                                                            ),
                                                          ),
                                                          SizedBox(
                                                            height: 30,
                                                            width: 100,
                                                            child:
                                                                ElevatedButton(
                                                              onPressed: () {},
                                                              style:
                                                                  ElevatedButton
                                                                      .styleFrom(
                                                                backgroundColor:
                                                                    const Color(
                                                                        0xffE0C3F6),
                                                                side: const BorderSide(
                                                                    width: 2,
                                                                    color: Colors
                                                                        .black),
                                                                shape: RoundedRectangleBorder(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            20)),
                                                              ),
                                                              child: const Text(
                                                                "Review",
                                                                style: TextStyle(
                                                                    color: Colors
                                                                        .black,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    fontSize:
                                                                        12),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      //color: Colors.amber,
                                      child: Column(
                                        children: [
                                          const SizedBox(
                                            height: 40,
                                          ),
                                          Container(
                                            padding: const EdgeInsets.all(18.0),
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              border: Border.all(),
                                            ),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Container(
                                                      height: 90,
                                                      width: 70,
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(12),
                                                        image: const DecorationImage(
                                                            image: AssetImage(
                                                                "assets/favoriteSalon.png"),
                                                            fit: BoxFit.cover),
                                                        border: Border.all(
                                                            width: 2,
                                                            color:
                                                                Colors.black),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              right: 0,
                                                              left: 0),
                                                      child: Column(
                                                        children: [
                                                          const Text(
                                                              'Gold Comb',
                                                              style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w900,
                                                                fontSize: 15,
                                                              )),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                        .only(
                                                                    right: 0,
                                                                    left: 12),
                                                            child: Row(
                                                              children: [
                                                                const Text(
                                                                    'Mens hair cut ,Hair spa ,oil Treatment '),
                                                              ],
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                        .only(
                                                                    right: 25,
                                                                    left: 12),
                                                            child: Row(
                                                              children: [
                                                                const Icon(Icons
                                                                    .access_time),
                                                                const Text(
                                                                    'Mon,12 Aug 2022-10:00 AM')
                                                              ],
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                        .only(
                                                                    right: 25,
                                                                    left: 12),
                                                            child: Row(
                                                              children: [
                                                                SizedBox(
                                                                  height: 30,
                                                                  width: 100,
                                                                  child:
                                                                      ElevatedButton(
                                                                    onPressed:
                                                                        () {},
                                                                    style: ElevatedButton
                                                                        .styleFrom(
                                                                      backgroundColor:
                                                                          const Color(
                                                                              0xffE0C3F6),
                                                                      side: const BorderSide(
                                                                          width:
                                                                              2,
                                                                          color:
                                                                              Colors.black),
                                                                      shape: RoundedRectangleBorder(
                                                                          borderRadius:
                                                                              BorderRadius.circular(20)),
                                                                    ),
                                                                    child:
                                                                        const Text(
                                                                      "completed",
                                                                      style: TextStyle(
                                                                          color: Colors
                                                                              .black,
                                                                          fontWeight: FontWeight
                                                                              .bold,
                                                                          fontSize:
                                                                              12),
                                                                    ),
                                                                  ),
                                                                ),
                                                                SizedBox(
                                                                  height: 30,
                                                                  width: 100,
                                                                  child:
                                                                      ElevatedButton(
                                                                    onPressed:
                                                                        () {},
                                                                    style: ElevatedButton
                                                                        .styleFrom(
                                                                      backgroundColor:
                                                                          const Color(
                                                                              0xffE0C3F6),
                                                                      side: const BorderSide(
                                                                          width:
                                                                              2,
                                                                          color:
                                                                              Colors.black),
                                                                      shape: RoundedRectangleBorder(
                                                                          borderRadius:
                                                                              BorderRadius.circular(20)),
                                                                    ),
                                                                    child:
                                                                        const Text(
                                                                      "Review",
                                                                      style: TextStyle(
                                                                          color: Colors
                                                                              .black,
                                                                          fontWeight: FontWeight
                                                                              .bold,
                                                                          fontSize:
                                                                              12),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          )
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            //color: Colors.amber,
                                            child: Column(
                                              children: [
                                                const SizedBox(
                                                  height: 40,
                                                ),
                                                Container(
                                                  padding: const EdgeInsets.all(
                                                      18.0),
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20),
                                                    border: Border.all(),
                                                  ),
                                                  child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Row(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Container(
                                                            height: 90,
                                                            width: 70,
                                                            decoration:
                                                                BoxDecoration(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          12),
                                                              image: const DecorationImage(
                                                                  image: AssetImage(
                                                                      "assets/favoriteSalon.png"),
                                                                  fit: BoxFit
                                                                      .cover),
                                                              border: Border.all(
                                                                  width: 2,
                                                                  color: Colors
                                                                      .black),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                        .only(
                                                                    right: 0,
                                                                    left: 0),
                                                            child: Column(
                                                              children: [
                                                                const Text(
                                                                    'Next Level Luxury',
                                                                    style:
                                                                        TextStyle(
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w900,
                                                                      fontSize:
                                                                          15,
                                                                    )),
                                                                Padding(
                                                                  padding: const EdgeInsets
                                                                          .only(
                                                                      right: 0,
                                                                      left: 12),
                                                                  child: Row(
                                                                    children: [
                                                                      const Text(
                                                                          'Mens hair cut ,Hair spa ,oil Treatment '),
                                                                    ],
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding: const EdgeInsets
                                                                          .only(
                                                                      right: 25,
                                                                      left: 12),
                                                                  child: Row(
                                                                    children: [
                                                                      const Icon(
                                                                          Icons
                                                                              .access_time),
                                                                      const Text(
                                                                          'Mon,12 Aug 2022-10:00 AM')
                                                                    ],
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding: const EdgeInsets
                                                                          .only(
                                                                      right: 25,
                                                                      left: 12),
                                                                  child: Row(
                                                                    children: [
                                                                      SizedBox(
                                                                        height:
                                                                            30,
                                                                        width:
                                                                            100,
                                                                        child:
                                                                            ElevatedButton(
                                                                          onPressed:
                                                                              () {},
                                                                          style:
                                                                              ElevatedButton.styleFrom(
                                                                            backgroundColor:
                                                                                const Color(0xffE0C3F6),
                                                                            side:
                                                                                const BorderSide(width: 2, color: Colors.black),
                                                                            shape:
                                                                                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                                                                          ),
                                                                          child:
                                                                              const Text(
                                                                            "completed",
                                                                            style: TextStyle(
                                                                                color: Colors.black,
                                                                                fontWeight: FontWeight.bold,
                                                                                fontSize: 12),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      SizedBox(
                                                                        height:
                                                                            30,
                                                                        width:
                                                                            100,
                                                                        child:
                                                                            ElevatedButton(
                                                                          onPressed:
                                                                              () {},
                                                                          style:
                                                                              ElevatedButton.styleFrom(
                                                                            backgroundColor:
                                                                                const Color(0xffE0C3F6),
                                                                            side:
                                                                                const BorderSide(width: 2, color: Colors.black),
                                                                            shape:
                                                                                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                                                                          ),
                                                                          child:
                                                                              const Text(
                                                                            "Review",
                                                                            style: TextStyle(
                                                                                color: Colors.black,
                                                                                fontWeight: FontWeight.bold,
                                                                                fontSize: 12),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                )
                                                              ],
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
