import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:untitled6/models/salon_details_model.dart';
import '../notification_page.dart';
import 'salon_detail.dart';

class FavoriteSalon extends StatefulWidget {
  const FavoriteSalon({Key? key}) : super(key: key);

  @override
  State<FavoriteSalon> createState() => _FavoriteSalonState();
}

class _FavoriteSalonState extends State<FavoriteSalon> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: GestureDetector(
            onTap: () {
              Get.back();
            },
            child: const Icon(
              Icons.arrow_back_ios_new,
              color: Colors.black,
            )),
        title: const Text(
          "Favorite Salons",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: salonDetails.length,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: () {},


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
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: GestureDetector(
                              onTap: () {showDialog(
                                    context: context,
                                    builder: (context) {
                                      return Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(0),
                                          border: Border.all(color: Colors.black),
                                        ),
                                        child: AlertDialog(
                                          alignment: Alignment.center,
                                          shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(20)),
                                          backgroundColor: Colors.white,
                                          actions: [
                                            Column(
                                              children: [
                                                const SizedBox(height: 100),

                                                Container(
                                                    height: 100,
                                                    width: 100,
                                                    child: Image(
                                                      image:
                                                      AssetImage("assets/dialogbox_Img.png"),
                                                      fit: BoxFit.cover,
                                                    )),
                                                const SizedBox(height: 15),

                                                const Text(
                                                  "Are You Sure!",
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontWeight: FontWeight.bold,
                                                      fontSize: 20),
                                                ),
                                                const SizedBox(height: 10),

                                                Text(
                                                  "Remove " + salonDetails[index].salonName,
                                                  style: const TextStyle(
                                                      color: Colors.grey,
                                                      fontWeight: FontWeight.bold,
                                                      fontSize: 14),
                                                ),
                                                const SizedBox(height: 15),

                                                Row(
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  children: [
                                                    SizedBox(
                                                      height: 40,
                                                      width: 120,
                                                      child: ElevatedButton(
                                                        onPressed: () {
                                                          Navigator.of(context).push(
                                                            MaterialPageRoute(
                                                              builder: (context) =>
                                                                  FavoriteSalon(),
                                                            ),
                                                          );
                                                        },
                                                        child: Text(
                                                          "No",
                                                          style: TextStyle(color: Colors.black),
                                                        ),
                                                        style: ElevatedButton.styleFrom(
                                                          backgroundColor: Colors.white,
                                                          shape: RoundedRectangleBorder(
                                                            borderRadius:
                                                            BorderRadius.circular(25),
                                                            side: BorderSide(
                                                                width: 2, color: Colors.black),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    const SizedBox(width: 10),

                                                    SizedBox(
                                                      height: 40,
                                                      width: 120,
                                                      child: ElevatedButton(
                                                        onPressed: () {},
                                                        child: Text("Yes"),
                                                        style: ElevatedButton.styleFrom(
                                                          backgroundColor: Color(0xff61C0BF),
                                                          shape: RoundedRectangleBorder(
                                                            borderRadius:
                                                            BorderRadius.circular(25),
                                                            side: BorderSide(
                                                                width: 2, color: Colors.black),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                const SizedBox(height: 15),

                                              ],
                                            ),
                                          ],
                                        ),
                                      );
                                    });
                              },
                              child: const Icon(
                                Icons.favorite,
                                size: 30,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 12),

                    Expanded(
                      flex: 2,
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.65,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            // Rating Bar Row
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  salonDetails[index].salonName,
                                  style: const TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                                // SizedBox(
                                //   width:
                                //       MediaQuery.of(context).size.width *
                                //           0.30,
                                // ),
                                // Spacer(),
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
                                const SizedBox(
                                  width: 2,
                                ),
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
                                const SizedBox(
                                  width: 3,
                                ),
                                Text(
                                  salonDetails[index].distance,
                                  style: const TextStyle(color: Colors.black),
                                ),
                                const Spacer(),

                                //  Open Button
                                SizedBox(
                                  height: 30,
                                  width: 80,
                                  child: ElevatedButton(
                                    onPressed: () {
                                      Navigator.of(context).push(
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              SalonDetail(),
                                        ),
                                      );
                                    },
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: const Color(0xffE0C3F6),
                                      side: const BorderSide(
                                          width: 2, color: Colors.black),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(20)),
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
    );
  }

  List<dynamic> salonDetails = [
    SalonDetailsContainer(
        salonName: "Kaka Ji Barber",
        address: "KDA Sector 9",
        initialRating: 1,
        distance: "5km",
        image: const AssetImage("assets/style1.jpeg")),
    SalonDetailsContainer(
        salonName: "Lucky salon",
        address: "KDA Sector 9",
        initialRating: 1,
        distance: "5km",
        image: const AssetImage("assets/style1.jpeg")),
    SalonDetailsContainer(
        salonName: "The best salon",
        address: "KDA Sector 9",
        initialRating: 1,
        distance: "5km",
        image: const AssetImage("assets/style1.jpeg")),
  ];
}
