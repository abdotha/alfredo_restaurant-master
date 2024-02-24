import 'package:alfredo_restaurant/dish_discription/dish_disc.dart';
import 'package:flutter/material.dart';

import '../models/model.dart';

class DescriptionScreen extends StatelessWidget {
  const DescriptionScreen({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
