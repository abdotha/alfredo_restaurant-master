import 'package:alfredo_restaurant/dish_discription/dish_disc.dart';
import 'package:flutter/material.dart';
import 'package:alfredo_restaurant/menu/menu_data.dart';
import '../models/model.dart';

class DescriptionScreen extends StatelessWidget {
  const DescriptionScreen({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: themeIcon == Icons.light_mode
          ? const Color(0xffffffff)
          : const Color(0xff0F0F0F),
      appBar: AppBar(
        backgroundColor: const Color(0xffBBD4CE),
        elevation: 0,
        centerTitle: true,
      ),
      body: DishDescription(
        dishImage: dishDisc[index]['dishImage'],
        dishName: dishDisc[index]['dishName'],
        description: dishDisc[index]['dishDisc'],
        price: dishDisc[index]['dishPrice'],
        index: index,
      ),
    );
  }
}
