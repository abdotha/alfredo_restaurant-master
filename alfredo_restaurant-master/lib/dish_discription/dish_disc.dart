import 'package:alfredo_restaurant/menu/menu_data.dart';
import 'package:alfredo_restaurant/models/model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

double totalPrice = 0;

List dishNumList = [];

class DishDescription extends StatefulWidget {
  const DishDescription({
    super.key,
    required this.dishImage,
    required this.dishName,
    required this.description,
    required this.price,
    required this.index,
  });
  final String dishImage;
  final String dishName;
  final String description;
  final double price;
  final int index;
  @override
  State<DishDescription> createState() => _DishDescriptionState();
}

class _DishDescriptionState extends State<DishDescription> {
  int dishNumber = 1;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                width: double.infinity,
                height: 180,
                decoration: const BoxDecoration(
                  color: Color(0xffBBD4CE),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                ),
                child: RichText(
                  text: TextSpan(
                    children: [
                      const TextSpan(
                        text: '    Dish\n',
                        style: TextStyle(
                          color: Colors.black45,
                          fontSize: 20,
                        ),
                      ),
                      TextSpan(
                        text: '   Description',
                        style: GoogleFonts.labrada(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: -85,
                left: (MediaQuery.of(context).size.width - 185) / 2,
                child: Container(
                  width: 185,
                  height: 185,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Image(
                    image: AssetImage(widget.dishImage),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 85,
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),

              child: Text(
                widget.dishName,
                textAlign: TextAlign.center,
                style: GoogleFonts.labrada(
                  color: Color(textColor),
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            width: 290,
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text(
                widget.description,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey[600],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 60,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FloatingActionButton(
                heroTag: '++',
                backgroundColor: const Color(0xffBBD4CE),
                onPressed: () {
                  setState(() {
                    dishNumber++;
                  });
                },
                child: const Icon(
                  Icons.add,
                  size: 25,
                  color: Colors.black,
                ),
              ),
              Text(
                '$dishNumber',
                style:  TextStyle(
                  color: Color(textColor),
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
              FloatingActionButton(
                heroTag: '--',
                backgroundColor: const Color(0xffBBD4CE),
                onPressed: () {
                  setState(() {
                    if (dishNumber > 1) {
                      dishNumber--;
                    }
                  });
                },
                child: const Icon(
                  Icons.remove,
                  size: 25,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          Text(
            '${dishNumber*widget.price} EGP',
            style:  TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 35,
              color: Color(textColor),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          SizedBox(
            width: 300,
            height: 50,
            child: ElevatedButton(
              onPressed: () {
                dishNumList.add([widget.index,dishNumber]);
                setState(() {
                  cart.add(dishDisc[widget.index]);
                  totalPrice += (dishNumber * widget.price);
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: const Center(
                        child: Text(
                          'Added Successfully',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      duration: const Duration(milliseconds: 800),
                      backgroundColor: const Color(0xffBBD4CE),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      behavior: SnackBarBehavior.floating,
                    ),
                  );
                });
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                    const Color(0xffBBD4CE)), // Set your desired background color
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                        10.0), // Adjust the radius as needed
                  ),
                ),
              ),
              child: const Text(
                'Add To Cart',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
          ),
          const SizedBox(height: 20,)
        ],
      ),
    );
  }
}
