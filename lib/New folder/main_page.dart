import 'package:flutter/material.dart';

import 'models/mainpage_topcontainer.dart';
import 'models/saloondetails_container.dart';

class Main_page extends StatefulWidget {
  @override
  State<Main_page> createState() => _Main_pageState();
}

class _Main_pageState extends State<Main_page> {
  //const Main_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Custom Appbar
                Row(
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/front_pic.jpeg"),
                              fit: BoxFit.cover),
                          border: Border.all(width: 1, color: Colors.black),
                          shape: BoxShape.circle),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: GestureDetector(
                            onTap: () {},
                            child: Icon(
                              Icons.favorite,
                              size: 15,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      //mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          " Afaq habib",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.location_on_outlined,
                              size: 15,
                            ),
                            Text(
                              " KDA Kohat Sector 4 House no 55",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 12),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Spacer(),
                    Container(
                      height: 35,
                      width: 45,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.horizontal(
                              left: Radius.circular(15),
                              right: Radius.circular(15)),
                          border: Border.all(width: 1, color: Colors.black)),
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.notifications_active_outlined,
                          size: 18,
                        ),
                      ),
                    ),
                  ],
                ),
                // Search Containor
                SizedBox(
                  height: 20,
                ),
                Container(
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        border: Border.all(width: 1, color: Colors.black)),
                    child: TextFormField(
                      decoration: InputDecoration(
                        icon: IconButton(
                            onPressed: () {}, icon: Icon(Icons.search_sharp)),
                        hintText: "Search",
                        border: InputBorder.none,
                        suffixIcon: Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Container(
                            height: 27,
                            width: 27,
                            decoration: BoxDecoration(
                              color: Color(0xff61C0BF),
                              shape: BoxShape.circle,
                            ),
                            child: Icon(
                              Icons.location_searching_rounded,
                              size: 25,
                            ),
                          ),
                        ),
                      ),
                    )),
                // List_View Containers
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 160,
                  width: MediaQuery.of(context).size.width * 0.95,
                  child: ListView.builder(
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemCount: ContainerModel.length,
                    itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: Container(
                        padding: EdgeInsets.all(10),
                        height: 170,
                        width: MediaQuery.of(context).size.width * 0.80,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(width: 1),
                            color: ContainerModel[index].container),
                        child: Row(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 4.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    ContainerModel[index].text,
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 22),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    ContainerModel[index].text2,
                                    style: TextStyle(color: Colors.black),
                                  ),
                                  SizedBox(
                                    height: 2,
                                  ),
                                  Text(
                                    ContainerModel[index].text3,
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 13),
                                  ),
                                  Spacer(),
                                  Container(
                                    height: 35,
                                    width: 110,
                                    decoration: BoxDecoration(
                                        color: Color(0xffE0C3F6),
                                        borderRadius: BorderRadius.circular(20),
                                        border: Border.all(
                                            width: 1, color: Colors.black)),
                                    child: Center(
                                        child: TextButton(
                                      onPressed: () {},
                                      child: Text(
                                        "Explore",
                                        style: TextStyle(color: Colors.black),
                                      ),
                                    )),
                                  ),
                                ],
                              ),
                            ),
                            Spacer(),
                            Container(
                              height: 120,
                              width: 125,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                image: ContainerModel[index].image,
                              )),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Text(
                  "All Available Salons",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
                SizedBox(
                  height: 12,
                ),
                // Saloon_Container
                Container(
                  height: MediaQuery.of(context).size.height * 0.45,
                  //  height:MediaQuery.of(context).size.height,
                  width: double.infinity,
                  child: ListView.builder(
                    itemCount: SaloonDetails.length,
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
                                        image: SaloonDetails[index].image,
                                        fit: BoxFit.cover),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 12,
                              ),
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
                                            SaloonDetails[index].bname,
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
                                      const SizedBox(
                                        height: 10,
                                      ),
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
                                            SaloonDetails[index].address,
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
                                            SaloonDetails[index].distance,
                                            style: const TextStyle(
                                                color: Colors.black),
                                          ),
                                          const Spacer(),
                                          SizedBox(
                                            height: 30,
                                            width: 80,
                                            child: ElevatedButton(
                                              onPressed: () {},
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

  List<dynamic> ContainerModel = [
    TopContainer(
        text: "30% off",
        text2: "Supper Offer",
        text3: "Hair-styling & treatment",
        container: Color(0xffD7CAC6),
        image: AssetImage("assets/containerimage.png")),
    TopContainer(
        text: "30% off",
        text2: "Supper Offer",
        text3: "Hair-styling & treatment",
        container: Color(0xffBAF0F0),
        image: AssetImage("assets/containerimage.png")),
    TopContainer(
        text: "30% off",
        text2: "Supper Offer",
        text3: "Hair-styling & treatment",
        container: Color(0xffD7CAC6),
        image: AssetImage("assets/containerimage.png")),
    TopContainer(
        text: "30% off",
        text2: "Supper Offer",
        text3: "Hair-styling & treatment",
        container: Color(0xffBAF0F0),
        image: AssetImage("assets/containerimage.png")),
  ];
  List<dynamic> SaloonDetails = [
    SaloonDetails_Container(
        bname: "Afaq",
        address: "KDA Sector 9",
        initialrating: 1,
        distance: "5km",
        image: AssetImage("assets/download (8).jpeg")),
    SaloonDetails_Container(
        bname: "Afaq",
        address: "KDA Sector 9",
        initialrating: 1,
        distance: "5km",
        image: AssetImage("assets/download (8).jpeg")),
    SaloonDetails_Container(
        bname: "Afaq",
        address: "KDA Sector 9",
        initialrating: 1,
        distance: "5km",
        image: AssetImage("assets/download (8).jpeg")),
    SaloonDetails_Container(
        bname: "Afaq",
        address: "KDA Sector 9",
        initialrating: 1,
        distance: "5km",
        image: AssetImage("assets/download (8).jpeg")),
    SaloonDetails_Container(
        bname: "Afaq",
        address: "KDA Sector 9",
        initialrating: 1,
        distance: "5km",
        image: AssetImage("assets/download (8).jpeg")),
    SaloonDetails_Container(
        bname: "Afaq",
        address: "KDA Sector 9",
        initialrating: 1,
        distance: "5km",
        image: AssetImage("assets/download (8).jpeg")),
    SaloonDetails_Container(
        bname: "Afaq",
        address: "KDA Sector 9",
        initialrating: 1,
        distance: "5km",
        image: AssetImage("assets/download (8).jpeg")),
    SaloonDetails_Container(
        bname: "Afaq",
        address: "KDA Sector 9",
        initialrating: 1,
        distance: "5km",
        image: AssetImage("assets/download (8).jpeg")),
  ];
}
