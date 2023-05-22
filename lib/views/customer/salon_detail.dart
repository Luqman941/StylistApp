import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:untitled6/reusable_widgets/tabBarView.dart';

class SalonDetail extends StatefulWidget {
  const SalonDetail({Key? key}) : super(key: key);

  @override
  State<SalonDetail> createState() => _SalonDetailState();
}

class _SalonDetailState extends State<SalonDetail>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.5,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                image: AssetImage("assets/style2.jpeg"),
                fit: BoxFit.cover,
              )),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: const [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 50, horizontal: 20),
                  child: CircleAvatar(
                    child: ClipOval(
                      child: Icon(
                        Icons.favorite,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: const [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 100, horizontal: 20),
                  child: CircleAvatar(
                    child: ClipOval(
                      child: Icon(
                        Icons.share_rounded,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: const [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 150, horizontal: 20),
                  child: CircleAvatar(
                    child: ClipOval(
                      child: Icon(
                        Icons.phone,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 300),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.6,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    )),
                child: SingleChildScrollView(
                  child: Padding(
                      padding:
                          const EdgeInsets.only(left: 20, top: 20, right: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "Kaka Ji Barber",
                                style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Container(
                                height: 35,
                                width: 70,
                                decoration: BoxDecoration(
                                  color: Colors.purple.withOpacity(.3),
                                  borderRadius: BorderRadius.circular(20),
                                  border:
                                      Border.all(color: Colors.black, width: 1),
                                ),
                                alignment: Alignment.center,
                                child: const Text(
                                  "Open",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              )
                            ],
                          ),
                          Row(
                            children: const [
                              Icon(Icons.location_on_outlined),
                              Text(
                                "KDA sector 8 ",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black54),
                              )
                            ],
                          ),
                          const SizedBox(height: 10),
                          Row(
                            children: const [
                              Icon(
                                Icons.star_border,
                                color: Colors.yellow,
                              ),
                              SizedBox(width: 8),
                              Text(
                                "4.9",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black54),
                              ),
                              SizedBox(width: 8),
                              Text(
                                "(76 Reviews)",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black54),
                              ),
                            ],
                          ),
                          const TabbarView(),
                        ],
                      )),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
