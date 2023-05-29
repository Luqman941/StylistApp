import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled6/views/customer/customer_profile_screen.dart';

import '../../constants/text_strings.dart';
import '../../controller/authentication_repository/AuthenticationRepository.dart';
import '../../utils/text_widget.dart';
import '../navbar.dart';
import 'salon_detail.dart';
import 'package:untitled6/models/mainpage_topcontainer.dart';
import 'package:untitled6/models/salon_details_model.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  //const Main_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(
        leading: const Icon(Icons.menu),
        title: const Text(tAppName),
        centerTitle: true,
        elevation: 0,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Custom Bar
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Row(children: [
                    GestureDetector(
                      onTap: () => Get.to(() => const CustomerProfilePage()),
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/front_pic.jpeg"),
                                fit: BoxFit.cover),
                            border: Border.all(width: 1, color: Colors.black),
                            shape: BoxShape.circle),
                      ),
                    ),
                    const SizedBox(width: 15),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const TextWidget(
                            text: " Afaq Habib",
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                          Row(children: [
                            Icon(
                              Icons.location_on_outlined,
                              size: 15,
                            ),
                            Text(
                              " KDA Kohat Sector 4 House no 55",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 12),
                            ),
                          ]),
                        ]),
                  ]),
                ),

                //-- Search Box
                Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      border: Border.all(width: 1, color: Colors.black)),
                  child: TextFormField(
                    decoration: InputDecoration(
                      icon: IconButton(
                          onPressed: () {

                          },
                          icon: const Icon(Icons.search_sharp)),
                      hintText: "Search",
                      border: InputBorder.none,
                      // suffixIcon: Padding(
                      //   padding: const EdgeInsets.all(3.0),
                      //   child: Container(
                      //     height: 27,
                      //     width: 27,
                      //     decoration: BoxDecoration(
                      //       color: Color(0xff61C0BF),
                      //       shape: BoxShape.circle,
                      //     ),
                      //     child: Icon(
                      //       Icons.location_searching_rounded,
                      //       size: 25,
                      //     ),
                      //   ),
                      // ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),

                // List_View Containers
                SizedBox(
                  height: 160,
                  width: MediaQuery.of(context).size.width * 0.95,
                  child: ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: containerModel.length,
                    itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        height: 170,
                        width: MediaQuery.of(context).size.width * 0.80,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(width: 1),
                            color: containerModel[index].container),
                        child: Row(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 4.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    containerModel[index].text,
                                    style: const TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 22),
                                  ),
                                  const SizedBox(height: 10),
                                  Text(
                                    containerModel[index].text2,
                                    style: const TextStyle(color: Colors.black),
                                  ),
                                  const SizedBox(height: 2),
                                  Text(
                                    containerModel[index].text3,
                                    style: const TextStyle(
                                        color: Colors.black, fontSize: 13),
                                  ),
                                  const Spacer(),
                                  Container(
                                    height: 35,
                                    width: 110,
                                    decoration: BoxDecoration(
                                        color: const Color(0xffE0C3F6),
                                        borderRadius: BorderRadius.circular(20),
                                        border: Border.all(
                                            width: 1, color: Colors.black)),
                                    child: Center(
                                        child: TextButton(
                                      child: const Text(
                                        "Explore",
                                        style: TextStyle(color: Colors.black),
                                      ),
                                      onPressed: () {},
                                    )),
                                  ),
                                ]
                              ),
                            ),
                            const Spacer(),
                            Container(
                              height: 120,
                              width: 125,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                image: containerModel[index].image,
                              )),
                            ),
                          ]
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 12),

                const Text(
                  "All Available Salons",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
                const SizedBox(height: 12),

                // Salon_Container
                Container(
                  height: MediaQuery.of(context).size.height * 0.45,
                  //  height:MediaQuery.of(context).size.height,
                  width: double.infinity,
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: salonDetails.length,
                    physics: const BouncingScrollPhysics(),
                    itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(width: 2, color: Colors.black)),
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                flex: 1,
                                child: Container(
                                  height: 90,
                                  width: 90,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    image: DecorationImage(
                                        image: salonDetails[index].image,
                                        fit: BoxFit.cover),
                                  ),
                                ),
                              ),
                              const SizedBox(width: 12),
                              Expanded(
                                flex: 2,
                                child: Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.65,
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      // Rating Bar Row
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            salonDetails[index].salonName,
                                            style: const TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 18),
                                          ),

                                          const Spacer(),
                                          Row(
                                            children: [
                                              const Icon(
                                                Icons.star,
                                                color: Colors.yellow,
                                              ),
                                              const Text("5.0"),
                                            ],
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 10),

                                      Row(
                                        children: [
                                          GestureDetector(
                                            onTap: () {},
                                            child: const Icon(
                                              Icons.location_on_outlined,
                                              color: Colors.black,
                                              size: 18,
                                            ),
                                          ),
                                          const SizedBox(width: 2),
                                          Text(
                                            salonDetails[index].address,
                                            style: const TextStyle(
                                                color: Colors.grey,
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          const Icon(
                                            Icons.social_distance,
                                            color: Colors.green,
                                          ),
                                          const SizedBox(width: 3),
                                          Text(
                                            salonDetails[index].distance,
                                            style: const TextStyle(
                                                color: Colors.black),
                                          ),
                                          const Spacer(),
                                          SizedBox(
                                            height: 30,
                                            width: 80,
                                            child: ElevatedButton(
                                              onPressed: () {
                                                Get.to(
                                                    () => const SalonDetail());
                                              },
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor:
                                                    const Color(0xffE0C3F6),
                                                side: const BorderSide(
                                                    width: 2,
                                                    color: Colors.black),
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20)),
                                              ),
                                              child: const Text(
                                                "Open",
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 15),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
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

  List<dynamic> containerModel = [
    TopContainer(
        text: "30% off",
        text2: "Supper Offer",
        text3: "Hair-styling & treatment",
        container: Color(0xffBAF0F0),
        image: AssetImage("assets/container_Img.png")),
    TopContainer(
        text: "30% off",
        text2: "Supper Offer",
        text3: "Hair-styling & treatment",
        container: Color(0xffD7CAC6),
        image: AssetImage("assets/container_Img.png")),
    TopContainer(
        text: "30% off",
        text2: "Supper Offer",
        text3: "Hair-styling & treatment",
        container: Color(0xffBAF0F0),
        image: AssetImage("assets/container_Img.png")),
  ];
  List<dynamic> salonDetails = [
    SalonDetailsContainer(
        salonName: "Kaka Ji barber",
        address: "KDA Sector 9",
        initialRating: 1,
        distance: "2km",
        image: AssetImage("assets/style1.jpeg")),
    SalonDetailsContainer(
        salonName: "Beauty salon",
        address: "KDA Sector 9",
        initialRating: 1,
        distance: "3km",
        image: AssetImage("assets/style1.jpeg")),
    SalonDetailsContainer(
        salonName: "Looking sharp",
        address: "KDA Sector 9",
        initialRating: 1,
        distance: "5km",
        image: AssetImage("assets/style1.jpeg")),
    SalonDetailsContainer(
        salonName: "Lucky barber",
        address: "KDA Sector 9",
        initialRating: 1,
        distance: "5km",
        image: AssetImage("assets/style1.jpeg")),
  ];
}
