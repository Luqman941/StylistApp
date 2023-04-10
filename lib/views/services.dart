import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:untitled6/views/customer/date_time_page.dart';

import 'package:untitled6/models/expantion_model.dart';


class Services extends StatefulWidget {
  const Services({Key? key}) : super(key: key);

  @override
  State<Services> createState() => _ServicesState();
}

class _ServicesState extends State<Services> {
  List<ExpantionThrdModel> exp3=[
    ExpantionThrdModel("Short", "20min", "\$20.00"),
    ExpantionThrdModel("Medium", "25min", "\$25.00"),
    ExpantionThrdModel("Tuner", "25min", "\$30.00"),
    ExpantionThrdModel("Special", "30min", "\$35.00"),




  ];
  int tap=-1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.blue.withOpacity(.3),
                border: Border.all(color: Colors.black,width: 1),
              ),
              child: Padding(
                  padding: const EdgeInsets.only(bottom: 5),
                  child:   Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Colors.black),
                    ),
                    child:ExpansionTile(

                      title: const Text('Open-Closed'),

                      children:List.generate(exp3.length, (index) =>
                          Padding(padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),child:
                          Row(

                            children: [
                              Text(exp3[index].text1),
                              const Spacer(),
                              Text(exp3[index].text2),
                              const SizedBox(width: 8,),
                              Text(exp3[index].text3),
                              const SizedBox(width: 8,),
                              InkWell(
                                onTap: (){
                                  setState(() {
                                    tap=index;

                                  });
                                },
                                child:
                                Container(
                                  height: 20,
                                  width: 20,
                                  decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.black

                                  ),
                                  child: Container(
                                    margin: const EdgeInsets.all(1.3),
                                    height: 20,
                                    width: 20,
                                    decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.white

                                    ),
                                    child:tap==index?  Container(
                                      margin: const EdgeInsets.all(2),
                                      height: 20,
                                      width: 20,
                                      decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.black

                                      ),

                                    ):const SizedBox(),

                                  ),
                                ),
                              )
                            ],
                          ))
                      ),

                    ),
                  )
              ),
            ),
            const SizedBox(height: 15,),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black,width: 1),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const ExpansionTile(
                title: Text("Beard"),
              ),
            ),
            const SizedBox(height: 15,),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black,width: 1),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const ExpansionTile(
                title: Text("Facial"),
              ),
            ),
            const SizedBox(height: 15,),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black,width: 1),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const ExpansionTile(
                title: Text("Hair Color"),
              ),
            ),
            const SizedBox(height: 15,),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black,width: 1),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const ExpansionTile(
                title: Text("Manicure"),
              ),
            ),
            const SizedBox(height: 15,),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black,width: 1),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const ExpansionTile(
                title: Text("Pedicure"),
              ),
            ),
            const SizedBox(height:15),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black,width: 1),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const ExpansionTile(
                title: Text("Waxing"),
              ),
            ),
            const SizedBox(height: 15,),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black,width: 1),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const ExpansionTile(
                title: Text("Massage"),
              ),
            ),
            const SizedBox(height: 20,),
            InkWell(
              onTap: (){
                Get.to(const DateTimePage());
              },
              child: Container(
                height: 60,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.blue.withOpacity(.3),
                  border: Border.all(color: Colors.black,width: 1),
                ),
                alignment: Alignment.center,
                child: const Text(
                  "Book Now",style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
                ),
              ),
            ),
          ],
        ),
      )
    );
  }
}
