import 'package:flutter/material.dart';
import 'package:untitled6/your_appointment.dart';
class reusablecardPage extends StatelessWidget {
  const reusablecardPage({Key? key}) : super(key: key);

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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(padding: EdgeInsets.only(left: 15,top: 10,bottom: 10),
                  child: Text(
                    "Service List",style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                  ),
                ),
                Divider(
                  thickness: 1,
                  color:  Colors.black,
                ),
                reuse(text: "Men's Short Hair Color",texts: "20 min",textd: "\$20.00" ,),
                reuse(text: "Hair Spa",texts: "25 min",textd: "\$45.00" ,),
                reuse(text: "CGST",textd: "\$02.00" ,),
                reuse(text: "SGST",textd: "\$02.00" ,),
              ],
            ),
          )
        ],
      ),
    );
  }
}
