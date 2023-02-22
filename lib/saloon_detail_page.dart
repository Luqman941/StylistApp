import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:untitled6/tabarvie_page.dart';
class SaloondetailPage extends StatefulWidget {
  const SaloondetailPage({Key? key}) : super(key: key);

  @override
  State<SaloondetailPage> createState() => _SaloondetailPageState();
}

class _SaloondetailPageState extends State<SaloondetailPage> with SingleTickerProviderStateMixin{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
    child:  Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height*0.5,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/download (13).jpeg"),fit: BoxFit.cover,
              )
            ),),
               Padding(padding: EdgeInsets.only(top: 300),
                child:Container(
                  height: MediaQuery.of(context).size.height*0.6,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    )
                  ),
                  child: SingleChildScrollView(
                 child: Padding(
                  padding: const EdgeInsets.only(left: 20,top: 20,right: 20),
                 child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                      const Text("Fade O'Clock Barber",style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),),
                          Container(
                            height: 50,
                            width: 70,
                            decoration: BoxDecoration(
                              color: Colors.purple.withOpacity(.3),
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(color: Colors.black,width: 1),
                            ),
                            alignment: Alignment.center,
                            child: const Text("Open",style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),),
                          )
                    ],
                  ),
                      Row(
                        children: const [
                          Icon(Icons.location_on_outlined),
                          Text("8502 Preston Rd. Inglewood, Maine 98380",style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Colors.black54
                          ),)
                        ],
                      ),
                      const SizedBox(height: 10,),
                      Row(
                        children: const [
                          Icon(Icons.star_border,color: Colors.yellow,),
                         SizedBox(width: 8,),
                         Text(  "4.9",style: TextStyle(
                             fontSize: 15,
                             fontWeight: FontWeight.w500,
                             color: Colors.black54
                         ),),
                         SizedBox(width: 8,),
                         Text("(76 Reviews)",style: TextStyle(
                             fontSize: 15,
                             fontWeight: FontWeight.w500,
                             color: Colors.black54
                         ),),
                          Spacer(),
                          Icon(Icons.data_usage_rounded),
                          SizedBox(width: 8,),
                          Text("Duration",style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Colors.black54
                          ),)
                        ],
                      ),
                      const TabbarView(),
    ],
                )
                ),
               ),
               ),
               ),
              ],
            ),
      ),
    );
  }
}
