import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:untitled6/views/customer/main_page.dart';
import '../../controller/add_services_controller.dart';
import '../../models/services_model.dart';

class add_services extends StatefulWidget {
  const add_services({Key? key}) : super(key: key);

  @override
  State<add_services> createState() => _add_servicesState();
}

class _add_servicesState extends State<add_services> {
  bool isObsecure = true;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(AddServicesController());
    final _formKey = GlobalKey<FormState>();

    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 15),
                Row(
                  children: [
                    Row(children: const [
                      Icon(
                        Icons.arrow_back_ios_new,
                        size: 20,
                      )
                    ]),
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Add Services",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        )),
                  ],
                ),
                Center(
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          Container(
                            height: 80,
                            width: 80,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(width: 2, color: Colors.black),
                              image: DecorationImage(
                                  image: AssetImage("assets/front_pic.jpeg"),
                                  fit: BoxFit.cover),
                            ),
                          ),
                          Positioned(
                            bottom: 2,
                            right: 0,
                            child: GestureDetector(
                              onTap: () {},
                              child: Container(
                                height: 30,
                                width: 30,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xffE0C3F6),
                                ),
                                child: const Icon(
                                  Icons.camera_alt_outlined,
                                  size: 19,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 7),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            "Add Picture",
                            style: Theme.of(context).textTheme.headline2,
                          )),
                    ],
                  ),
                ),
                const SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 9.0),
                  child: TextFormField(
                    controller: controller.serviceName,
                    validator: (serviceName) =>
                    serviceName!.isEmpty ? "Please Enter Service Name" : null,
                    decoration: const InputDecoration(
                      labelText: "Service Name",
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    const Expanded(
                        child: Text("Add Sub Services",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold))),
                    const Spacer(),
                    Expanded(
                      child: TextButton(
                          onPressed: () {},
                          child: Text(
                            "+",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                          )),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 9.0),
                  child: TextFormField(
                    controller: controller.subServiceName,
                    validator: (subServiceName) =>
                    subServiceName!.isEmpty ? "Please Enter Sub_Service Name" : null,
                    decoration: const InputDecoration(
                      labelText: "Sub Service Name",
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 9.0),
                  child: TextFormField(
                    controller: controller.price,
                    keyboardType: TextInputType.number,
                    validator: (price) => price!.isEmpty ? "Price" : null,
                    decoration: const InputDecoration(
                      labelText: "Price",
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 9.0),
                  child: TextFormField(
                    controller: controller.serviceTime,
                    validator: (serviceTime) =>
                    serviceTime!.isEmpty ? "Service Time" : null,
                    decoration: const InputDecoration(
                      labelText: "Service Time",
                    ),
                  ),
                ),
                const SizedBox(height: 25),
                SizedBox(
                  height: 55,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {

                        final service = ServicesModel(
                            serviceName: controller.serviceName.text.trim(),
                            subServiceName: controller.subServiceName.text.trim(),
                            price: controller.price.text.trim(),
                            serviceTime: controller.serviceTime.text.trim(),);

                        AddServicesController.instance.createService(service);
                        Get.to(() => const MainPage());
                      }
                    },
                    child: const Text(
                      "Add Services",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
