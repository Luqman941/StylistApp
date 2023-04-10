import 'package:flutter/material.dart';
import 'package:untitled6/models/expantion_model.dart';

class AboutBarberShop extends StatefulWidget {
  const AboutBarberShop({Key? key}) : super(key: key);

  @override
  State<AboutBarberShop> createState() => _AboutBarberShopState();
}

class _AboutBarberShopState extends State<AboutBarberShop> {
  List<ExpantionModel> exp=[
    ExpantionModel("assets/style2.jpeg", "Theresa Webb", "Barbers", "5.0"),
    ExpantionModel("assets/style2.jpeg", "Diane Russel", "Barbers", "5.0"),
    ExpantionModel("assets/style2.jpeg", "Bessi Cooper", "Barbers", "5.0"),


  ];
  List<ExpantionSecondModel> exp2=[
  ExpantionSecondModel("Monday","10:00 AM-10:00:PM"),
    ExpantionSecondModel("Tuesday","10:00 AM-10:00:PM"),
    ExpantionSecondModel("Wednesday","10:00 AM-10:00:PM"),
    ExpantionSecondModel("Thursday","10:00 AM-10:00:PM"),
    ExpantionSecondModel("Friday","10:00 AM-10:00:PM"),
    ExpantionSecondModel("Saturday","10:00 AM-10:00:PM"),
    ExpantionSecondModel("Sunday","10:00 AM-10:00:PM"),
  ];
 List<ExpantionfourthdModel> exp4=[
   ExpantionfourthdModel("Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia"),
 ];
 List<ExpantionfifthModel> exp5=[
   ExpantionfifthModel(Icons.email, "contact@rieadstore.com"),
   ExpantionfifthModel(Icons.phone_outlined, "+123 2566 3552 256"),
   ExpantionfifthModel(Icons.map, "www.rieadstore.com"),
 ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView
        (
        child:  Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(height: 20,),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.black,width: 1),
                      color: Colors.blue.withOpacity(.3),
                    ),
                    child: Container(
                      margin: const EdgeInsets.only(bottom: 5),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black,width: 1),
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.white,
                      ),
                      child:  ExpansionTile(
                        title: const Text("About us"),
                        children:
                        List.generate(exp4.length, (index) => Padding(padding: const EdgeInsets.only(left: 10,right: 10,bottom: 8,top: 8),
                          child:  Text(exp4[index].text1,style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500
                          ),textAlign: TextAlign.center,),),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20,),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blue.withOpacity(.3),
                      border: Border.all(color: Colors.black,width: 1),
                    ),
                    child: Padding(
                        padding: const EdgeInsets.only(bottom: 5),
                        child:    Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: Colors.black),
                          ),
                          child:ExpansionTile(

                            title: const Text('Our Staffs'),
                            // Cont
                            // ents
                            children:List.generate(exp.length, (index) =>

                                Padding(padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),child:
                                Row(

                                  children: [

                                    Container(
                                      height: 45,
                                      width: 45,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          image: DecorationImage(image: AssetImage(exp[index].img),fit: BoxFit.cover),
                                          border: Border.all(width: 2,color: Colors.black)
                                      ),
                                    ),
                                    Padding(padding: const EdgeInsets.only(left: 10),
                                      child:
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(exp[index].name,style: const TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                                          Text(exp[index].profession)
                                        ],
                                      ),
                                    ),
                                    const Spacer(),
                                    Row(
                                      children: [
                                        const Icon(Icons.star,color: Colors.yellow,size: 18,),
                                        const SizedBox(width: 2,),
                                        Text(exp[index
                                        ].rating)
                                      ],
                                    )
                                  ],
                                ))
                            ),

                          ),
                        )
                    ),
                  ),

                ],
              ),
            ),

            SizedBox(
              child: Column(
                children: [
                  const SizedBox(height: 20,),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blue.withOpacity(.3),
                      border: Border.all(color: Colors.black,width: 1),
                    ),
                    child: Padding(
                        padding: const EdgeInsets.only(bottom: 5),
                        child:    Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: Colors.black),
                          ),
                          child:ExpansionTile(
                            title: const Text('Open-Closed'),
                            // Cont
                            // ents
                            children:List.generate(exp2.length, (index) =>

                                Padding(padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),child:
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                                  children: [
                                    Text(exp2[index].text1,style: const TextStyle(fontSize:15),),
                                    Text(exp2[index].text2,style: const TextStyle(fontSize:15,fontWeight: FontWeight.w500),)

                                  ],
                                ))
                            ),

                          ),
                        )
                    ),
                  ),

                ],
              ),
            ),

            SizedBox(
              child: Column(
                children: [
                  const SizedBox(height: 20,),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blue.withOpacity(.3),
                      border: Border.all(color: Colors.black,width: 1),
                    ),
                    child: Padding(
                        padding: const EdgeInsets.only(bottom: 5),
                        child:    Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: Colors.black),
                          ),
                          child:ExpansionTile(
                            title: const Text('Contact-us'),
                            // Cont
                            // ents
                            children:List.generate(exp5.length, (index) =>

                                Padding(padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),child:
                                Row(
                                  children: [
                                    Icon(exp5[index].icons),
                                    const SizedBox(width: 10,),
                                    Text(exp5[index].text1,style: const TextStyle(fontSize:15,fontWeight: FontWeight.w500),)

                                  ],
                                ))
                            ),

                          ),
                        )
                    ),
                  ),

                ],
              ),
            ),
            const SizedBox(height: 20,),
            Container(
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
            )
          ],
        ),
      )
    );
  }
}
