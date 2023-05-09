import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:untitled6/models/updated_page.dart';

import 'order_successfully_completed.dart';

enum SelectedMethod {
  paypal(),
  stripe,
  // paypal,
  visacard,
  paytm,
  cashshop;
}

class PaymentMethod extends StatefulWidget {
  const PaymentMethod({Key? key}) : super(key: key);

  @override
  State<PaymentMethod> createState() => _PaymentMethodState();
}

class _PaymentMethodState extends State<PaymentMethod> {
  SelectedMethod? selected;
  @override
  Widget build(BuildContext context) {
    UpdatedPage updatpro = Get.put(UpdatedPage());
    return Material(
      child: Container(
        // height: 500,
        child: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: const [
                  Text(
                    "Choose your Payment Option",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Spacer(),
                  Icon(Icons.close)
                ],
              ),
              const SizedBox(height: 10),

              const Text(
                // "Select option to complete the payment process",
                "Select any option suitable for you to complete the payment process",
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Colors.black54),
              ),
              const SizedBox(height: 20),

              //  Stripe
              GestureDetector(
                onTap: () {
                  setState(() {
                    selected = SelectedMethod.stripe;
                  });
                },
                child: MultiUpdateWidget(
                  images: "assets/images/stripe.png",
                  text: "Stripe",
                  colr: selected == SelectedMethod.stripe
                      ? Colors.purple.withOpacity(.3)
                      : Colors.white,
                  colrs: selected == SelectedMethod.stripe
                      ? Colors.black
                      : Colors.white,
                ),
              ),
              const SizedBox(height: 15),

              //  Paypal
              GestureDetector(
                onTap: () {
                  setState(() {
                    selected = SelectedMethod.paypal;
                  });
                },
                child: MultiUpdateWidget(
                  images: "assets/images/1_payPal.png",
                  text: "Paypal",
                  colr: selected == SelectedMethod.paypal
                      ? Colors.purple.withOpacity(.3)
                      : Colors.white,
                  colrs: selected == SelectedMethod.paypal
                      ? Colors.black
                      : Colors.white,
                ),
              ),
              const SizedBox(height: 15),

              //  VisaCard
              GestureDetector(
                onTap: () {
                  setState(() {
                    selected = SelectedMethod.visacard;
                  });
                },
                child: MultiUpdateWidget(
                  images: "assets/2_visa.png",
                  text: "Visa Card",
                  colr: selected == SelectedMethod.visacard
                      ? Colors.purple.withOpacity(.3)
                      : Colors.white,
                  colrs: selected == SelectedMethod.visacard
                      ? Colors.black
                      : Colors.white,
                ),
              ),
              const SizedBox(height: 15),
              //
              // //  Paytm
              // GestureDetector(
              //     onTap: () {
              //       setState(() {
              //         selected = SelectedMethod.paytm;
              //       });
              //     },
              //     child: MultiUpdateWidget(
              //       images: "assets/3_paytm.png",
              //       text: "Paytm",
              //       colr: selected == SelectedMethod.paytm
              //           ? Colors.purple.withOpacity(.3)
              //           : Colors.white,
              //       colrs: selected == SelectedMethod.paytm
              //           ? Colors.black
              //           : Colors.white,
              //     )),
              // const SizedBox(height: 15),
              //
              // //  CashShop
              // GestureDetector(
              //   onTap: () {
              //     setState(() {
              //       selected = SelectedMethod.cashshop;
              //     });
              //   },
              //   child: MultiUpdateWidget(
              //       images: "assets/4_letsShop.png",
              //       text: "Cash on Shop",
              //       colr: selected == SelectedMethod.cashshop
              //           ? Colors.purple.withOpacity(.3)
              //           : Colors.white,
              //       colrs: selected == SelectedMethod.cashshop
              //           ? Colors.black
              //           : Colors.white),
              // ),
              const SizedBox(height: 35),

              GestureDetector(
                onTap: () {
                  // Get.to(orderSuccessfullyPage());
                },
                child: Container(
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.blue.withOpacity(.3),
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.black, width: 1),
                  ),
                  child: const Center(
                    child: Text(
                      "Continue",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//  TODO: MultiUpdateWidget konse folder mei rko
class MultiUpdateWidget extends StatelessWidget {
  const MultiUpdateWidget({
    Key? key,
    required this.images,
    required this.text,
    required this.colr,
    required this.colrs,
  }) : super(key: key);

  final String images;
  final String text;
  final Color colr;
  final Color colrs;
  //selectedmethod? selected;
  @override
  Widget build(BuildContext context) {
    UpdatedPage updatpro = Get.put(UpdatedPage());
    return Material(
      child: Container(
        child: Container(
          height: 65,
          decoration: BoxDecoration(
            color: colr,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.black, width: 1),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 15, top: 5, bottom: 5, right: 15),
            child: Row(
              children: [
                Container(
                  width: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Colors.black),
                      image: DecorationImage(
                        image: AssetImage(images), //fit: BoxFit.cover,
                      )),
                ),
                const SizedBox(
                  width: 10
                ),

                Text(
                  text,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const Spacer(),
                GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.black),
                      ),
                      child: Center(
                        child: Container(
                          height: 15,
                          width: 15,
                          decoration: BoxDecoration(
                            color: colrs,
                            // border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
