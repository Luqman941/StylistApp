import 'package:flutter/material.dart';

import '../your_appointment.dart';

class timing extends StatelessWidget {
  const timing({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return    Container(
      height: 250,
      decoration: BoxDecoration(
        color: Colors.blue.withOpacity(.3),
        border: Border.all(color: Colors.black,width: 1),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Stack(
        children: [
          Container(
            height: 244,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.black,width: 1)
            ),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(padding: EdgeInsets.only(left: 15,top: 10,bottom: 10),
                    child: Text(
                      "Enter Open-Closed",style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                    ),
                  ),
                  Divider(
                    thickness: 1,
                    color:  Colors.black,
                  ),
                  reuse(text: "Day",texts: "Open",textd: "Closed" ,),
                  reuse(text: "Sunday",texts: "5:00 AM ",textd: "8:00 PM" ,),
                  reuse(text: "Tuesday",texts: "5:00 AM",textd: "8:00 PM" ,),
                  reuse(text: "Wednesday",texts: "5:00 AM",textd: "8:00 PM" ,),
                  reuse(text: "Thursday",texts: "5:00 AM",textd: "8:00 PM" ,),
                  reuse(text: "Friday",texts: "5:00 AM",textd: "8:00 PM" ,),
                  reuse(text: "Saturday",texts: "5:00 AM",textd: "8:00 PM" ,),
                ],
              ),
            ),

          )
        ],
      ),
    );
  }
}
