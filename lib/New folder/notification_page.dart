import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          "Notification",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 0.0),
                child: Text(
                  "Today",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
              SizedBox(height: 10,),
              Expanded(
                child: ListView.builder(
                  itemCount: 10,
                  physics: BouncingScrollPhysics(),
                  itemBuilder: (context, index) =>
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: GestureDetector(
                          onTap: () {
                            // Navigator.push(context,
                            //     MaterialPageRoute(builder: (context) =>,));
                          },
                          child: Row(
                            children: [
                              Expanded(
                                child: Container(
                                  height: 45,
                                  width: 45,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 2, color: Colors.black),
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "assets/images/m_one.jpg"),
                                        fit: BoxFit.cover),
                                  ),
                                ),
                              ),
                              SizedBox(width: 10,),
                              Expanded(
                                flex: 5,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Your Order Conform",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      "35 min ago 'New Message'",
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Spacer(),
                              Expanded(
                                flex: 0,
                                child: Container(
                                  height: 8,
                                  width: 8,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          width: 2, color: Colors.black),
                                      shape: BoxShape.circle,
                                      color: Color(0xff61C0BF)),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
