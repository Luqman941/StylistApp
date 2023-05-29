import 'package:flutter/material.dart';

class SalonPortfolio extends StatefulWidget {
  const SalonPortfolio({Key? key}) : super(key: key);

  @override
  State<SalonPortfolio> createState() => _SalonPortfolioState();
}

class _SalonPortfolioState extends State<SalonPortfolio> {
  List items = [
    'assets/favoriteSalon.png',
    'assets/favoriteSalon.png',
    'assets/favoriteSalon.png',
    'assets/favoriteSalon.png',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              GridView.builder(
                  shrinkWrap: true,
                  //physics: NeverScrollableScrollPhysics(),
                  physics: const BouncingScrollPhysics(),
                  padding: const EdgeInsets.all(10),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10),
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    return Image.asset(
                      items[index],
                      height: 100,
                      width: 100,
                      fit: BoxFit.fill,
                    );
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
