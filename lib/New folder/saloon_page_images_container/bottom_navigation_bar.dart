import 'package:flutter/material.dart';
import 'package:untitled6/views/customer/profile_page.dart';

//import '../../welcome_page.dart';
import '../../views/customer/favorite_saloons.dart';
import '../../views/customer/main_page.dart';
import '../../views/notification_page.dart';

class Bottom extends StatefulWidget {
  const Bottom({Key? key}) : super(key: key);

  @override
  State<Bottom> createState() => _BottomState();
}

class _BottomState extends State<Bottom> {
  int _selectedIndex = 0;
  final List screen = [
    MainPage(),
    FavoriteSaloon(),
    NotificationPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screen[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.teal,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.white,
          currentIndex: _selectedIndex,
          type: BottomNavigationBarType.fixed,
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: (_selectedIndex == 0)
                    ? Container(
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(12)),
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                        child: Icon(Icons.home))
                    : Icon(Icons.home),
                label: "Home"),
            BottomNavigationBarItem(
                icon: (_selectedIndex == 3)
                    ? Container(
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(12)),
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                        child: Icon(Icons.favorite))
                    : Icon(Icons.favorite),
                label: "favorite"),
            BottomNavigationBarItem(
                icon: (_selectedIndex == 3)
                    ? Container(
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(12)),
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                        child: Icon(Icons.notifications))
                    : Icon(Icons.notifications),
                label: "Notifications"),
            BottomNavigationBarItem(
                icon: (_selectedIndex == 4)
                    ? Container(
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(12)),
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                        child: Icon(Icons.person))
                    : Icon(Icons.person),
                label: "Profile"),
          ]),
    );
  }
}
