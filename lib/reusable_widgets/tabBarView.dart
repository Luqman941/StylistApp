import 'package:flutter/material.dart';
import 'package:untitled6/views/customer/portfolio_pictures.dart';
import 'package:untitled6/views/review.dart';
import 'package:untitled6/views/services.dart';

import '../views/customer/about_barbershop.dart';
import 'package:untitled6/models/expantion_model.dart';

class TabbarView extends StatefulWidget {
  const TabbarView({Key? key}) : super(key: key);

  @override
  State<TabbarView> createState() => _TabbarViewState();
}

class _TabbarViewState extends State<TabbarView>
    with SingleTickerProviderStateMixin {
  late TabController controller;
  @override
  void initState() {
    super.initState();
    controller = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Column(children: [
          TabBar(
              isScrollable: true,
              controller: controller,
              indicatorColor: Colors.purple,
              labelColor: Colors.black,
              labelStyle:
                  const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              unselectedLabelStyle: const TextStyle(color: Colors.black54),
              tabs: const [
                Tab(child: Text("About")),
                Tab(
                  child: Text("Services"),
                ),
                Tab(
                  child: Text('Portfolio'),
                ),
                Tab(
                  child: Text("Review"),
                ),
              ]),
          Container(
            height: MediaQuery.of(context).size.height * 0.3,
            width: MediaQuery.of(context).size.width,
            child: TabBarView(controller: controller, children: [
              const Expanded(
                child: AboutBarberShop(),
              ),
              const Services(),
              const PortfolioPictures(),
              Reviews(),
            ]),
          )
        ]));
  }
}
