import 'package:flutter/material.dart';

import '../models/model.dart';
class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: NavigationBar(
        backgroundColor: Color(0xffBBD4CE),
        destinations: [
          NavigationDestination(
            icon: Icon(Icons.menu_book,
            color: Colors.black,),
            label: 'Menu',
          ),
          NavigationDestination(
            icon: Icon(Icons.shopping_bag,
          color: Colors.black,),
            label: 'Order',
          ),
        ],
        indicatorColor: Colors.white,
        // unselectedItemColor: Color(textColor),
        selectedIndex: currentIndex,
        onDestinationSelected: (index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),

    );
  }
}
