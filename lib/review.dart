import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:untitled6/main.dart';

class review extends StatefulWidget {
//  double fullRating = 0;
  double halfRating = 0;

  @override
  State<review> createState() => _reviewState();
}

class _reviewState extends State<review> {
//  set fullRating(double fullRating=0) {}
  // double fullRating = 0;
  double halfRating = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4.0),
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 120,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 100,
                                width: 80,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                        color: Colors.black, width: 4.0)),
                                child: Center(
                                  child: const Text(
                                    '4.9',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w900,
                                        fontSize: 20),
                                  ),
                                ),
                              ),
                              const Text('Total 22 reviews',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w900)),
                            ],
                          ),
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                RatingBar.builder(
                                  initialRating: 0,
                                  //minRating: 1,
                                  allowHalfRating: true,
                                  unratedColor: Colors.grey,
                                  itemCount: 5,
                                  itemSize: 20.0,
                                  itemPadding:
                                      EdgeInsets.symmetric(horizontal: 2.0),
                                  updateOnDrag: true,
                                  itemBuilder: (context, index) => Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                  onRatingUpdate: (ratingvalue) {
                                    setState(() {
                                      halfRating = ratingvalue;
                                    });
                                  },
                                ),
                                Text(
                                  'Rating:$halfRating',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w300,
                                    fontSize: 22.0,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                RatingBar.builder(
                                  initialRating: 0,
                                  //minRating: 1,
                                  allowHalfRating: true,
                                  unratedColor: Colors.grey,
                                  itemCount: 4,
                                  itemSize: 20.0,
                                  itemPadding:
                                      EdgeInsets.symmetric(horizontal: 2.0),
                                  updateOnDrag: true,
                                  itemBuilder: (context, index) => Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                  onRatingUpdate: (ratingvalue) {
                                    setState(() {
                                      halfRating = ratingvalue;
                                    });
                                  },
                                ),
                                Text(
                                  'Rating:$halfRating',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w300,
                                    fontSize: 22.0,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                RatingBar.builder(
                                  initialRating: 0,
                                  //minRating: 1,
                                  allowHalfRating: true,
                                  unratedColor: Colors.grey,
                                  itemCount: 3,
                                  itemSize: 20.0,
                                  itemPadding:
                                      EdgeInsets.symmetric(horizontal: 2.0),
                                  updateOnDrag: true,
                                  itemBuilder: (context, index) => Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                  onRatingUpdate: (ratingvalue) {
                                    setState(() {
                                      halfRating = ratingvalue;
                                    });
                                  },
                                ),
                                Text(
                                  'Rating:$halfRating',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w300,
                                    fontSize: 22.0,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                RatingBar.builder(
                                  initialRating: 0,
                                  //minRating: 1,
                                  allowHalfRating: true,
                                  unratedColor: Colors.grey,
                                  itemCount: 2,
                                  itemSize: 20.0,
                                  itemPadding:
                                      EdgeInsets.symmetric(horizontal: 2.0),
                                  updateOnDrag: true,
                                  itemBuilder: (context, index) => Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                  onRatingUpdate: (ratingvalue) {
                                    setState(() {
                                      halfRating = ratingvalue;
                                    });
                                  },
                                ),
                                Text(
                                  'Rating:$halfRating',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w300,
                                    fontSize: 22.0,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                RatingBar.builder(
                                  initialRating: 0,
                                  //minRating: 1,
                                  allowHalfRating: true,
                                  unratedColor: Colors.grey,
                                  itemCount: 1,
                                  itemSize: 20.0,
                                  itemPadding:
                                      EdgeInsets.symmetric(horizontal: 2.0),
                                  updateOnDrag: true,
                                  itemBuilder: (context, index) => Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                  onRatingUpdate: (ratingvalue) {
                                    setState(() {
                                      halfRating = ratingvalue;
                                    });
                                  },
                                ),
                                Text(
                                  'Rating:$halfRating',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w300,
                                    fontSize: 22.0,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
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
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 50,
                            width: 70,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: AssetImage("assets/favritesaloon.png"),
                                  fit: BoxFit.cover),
                              border: Border.all(width: 2, color: Colors.black),
                            ),
                          ),
                          Column(
                            children: [
                              Text('Afaq Habib',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w900,
                                    fontSize: 15,
                                  )),
                              Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.grey,
                                  ),
                                ],
                              )
                            ],
                          ),
                          Spacer(),
                          Text("31 min ago")
                        ],
                      ),
                      Text(
                          "we,re really grateful and appreciate you good work for every facility"),
                    ],
                  ),
                ),
                SizedBox(
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
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 50,
                            width: 70,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image:
                                      AssetImage("assets/containerimage.png"),
                                  fit: BoxFit.cover),
                              border: Border.all(width: 2, color: Colors.black),
                            ),
                          ),
                          Column(
                            children: [
                              Text('Fayaz Khan',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w900,
                                    fontSize: 15,
                                  )),
                              Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.grey,
                                  ),
                                ],
                              )
                            ],
                          ),
                          Spacer(),
                          Text("40 min ago")
                        ],
                      ),
                      Text(
                          'I love your hair styles.I hope to see you again very soon.best of luck'),
                    ],
                  ),
                ),
                SizedBox(
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
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 50,
                            width: 70,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: AssetImage("assets/download (8).jpeg"),
                                  fit: BoxFit.cover),
                              border: Border.all(width: 2, color: Colors.black),
                            ),
                          ),
                          Column(
                            children: [
                              Text('Asif Gul',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w900,
                                    fontSize: 15,
                                  )),
                              Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.grey,
                                  ),
                                ],
                              )
                            ],
                          ),
                          Spacer(),
                          Text("45 min ago")
                        ],
                      ),
                      Text(" Great work Thank you so much for services!!!!!"),
                    ],
                  ),
                ),
                SizedBox(
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
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 50,
                            width: 70,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image:
                                      AssetImage("assets/download (13).jpeg"),
                                  fit: BoxFit.cover),
                              border: Border.all(width: 2, color: Colors.black),
                            ),
                          ),
                          Column(
                            children: [
                              Text('Irfan',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w900,
                                    fontSize: 15,
                                  )),
                              Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.grey,
                                  ),
                                ],
                              )
                            ],
                          ),
                          Spacer(),
                          Text("45 min ago")
                        ],
                      ),
                      Text("Excellent job,Thank you so much sir"),
                    ],
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                  padding: const EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 50,
                            width: 70,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: AssetImage("assets/front_pic.jpeg"),
                                  fit: BoxFit.cover),
                              border: Border.all(width: 2, color: Colors.black),
                            ),
                          ),
                          Column(
                            children: [
                              Text('Afaq Habib',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w900,
                                    fontSize: 15,
                                  )),
                              Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.grey,
                                  ),
                                ],
                              )
                            ],
                          ),
                          Spacer(),
                          Text("31 min ago")
                        ],
                      ),
                      Text(
                          "we,re really grateful and appreciate you good work for every facility"),
                    ],
                  ),
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
                      border: Border.all(width: 2, color: Colors.black)),
                  child: TextButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => homePage(),
                        ),
                      );
                    },
                    child: Text(
                      "Book Now",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 20),
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
