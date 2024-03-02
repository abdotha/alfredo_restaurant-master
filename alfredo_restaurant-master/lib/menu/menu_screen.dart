import 'package:flutter/material.dart';

import '../models/model.dart';
import 'package:alfredo_restaurant/menu/menu_data.dart';
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
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: themeIcon == Icons.light_mode
            ? const Color(0xffffffff)
            : const Color(0xff0F0F0F),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.menu_book,),
            label: 'Menu',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag),
            label: 'Order',
          ),
        ],
        selectedItemColor: const Color(0xffBBD4CE),
        unselectedItemColor: Color(textColor),
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
    );
  }
}
