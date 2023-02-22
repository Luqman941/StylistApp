import 'package:flutter/material.dart';
import 'package:untitled6/New%20folder/profile_spage.dart';

//import '../../welcome_page.dart';
import '../main_page.dart';

class Bottom extends StatefulWidget {
  const Bottom({Key? key}) : super(key: key);

  @override
  State<Bottom> createState() => _BottomState();
}

class _BottomState extends State<Bottom> {
  int _selectedIndex = 0;
  final List screen = [
    Main_page(),
    Main_page(),
    Main_page(),
    Main_page(),
    Profile_Screen(),
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
                icon: (_selectedIndex == 1)
                    ? Container(
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(12)),
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                        child: Icon(Icons.location_on_outlined))
                    : Icon(Icons.location_on_outlined),
                label: "Location"),
            BottomNavigationBarItem(
                icon: (_selectedIndex == 2)
                    ? Container(
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(12)),
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                        child: ImageIcon(
                          AssetImage('assets/menu_icon.png'),
                        ),
                      )
                    : ImageIcon(
                        AssetImage('assets/menu_icon.png'),
                      ),
                label: "Details"),
            BottomNavigationBarItem(
                icon: (_selectedIndex == 3)
                    ? Container(
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(12)),
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                        child: Icon(Icons.chat))
                    : Icon(Icons.chat),
                label: "About"),
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
