import 'package:flutter/material.dart';

class Saloon_Mainpage_Container extends StatelessWidget {
  const Saloon_Mainpage_Container({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Center(
              child: Container(
                padding: EdgeInsets.all(8),
                height: 100,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(width: 1, color: Colors.black)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 95,
                      width: 95,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/facebook.jpeg"),
                              fit: BoxFit.cover)),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Tahseen Barber",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                            //Spacer(),
                            //SizedBox(width: 40),

                            Icon(
                              Icons.star_border_outlined,
                              size: 18,
                            ),

                            //IconButton(onPressed:(){}, icon:Icon(Icons.star_border_outlined,size:18,)),
                            Text(
                              "5.0",
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.location_on_outlined,
                              size: 20,
                            ),
                            Text(
                              " KDA Kohat Sector 4 House no 55",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 11),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.social_distance,
                              color: Color(0xff61C0BF),
                            ),
                            Text("5 km"),
                            SizedBox(
                              width: 92,
                            ),
                            GestureDetector(
                              onTap: () {
                                //   Navigator.push(context, MaterialPageRoute(builder: (context) => ,));
                              },
                              child: Container(
                                height: 30,
                                width: 60,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    border: Border.all(
                                        width: 1, color: Colors.black),
                                    color: Color(0xffE0C3F6)),
                                child: Center(
                                    child: Text(
                                  "Open",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                )),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
