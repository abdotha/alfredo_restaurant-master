import 'package:alfredo_restaurant/order/order_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:alfredo_restaurant/menu/menu_data.dart';
import '../models/model.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({super.key});
  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: themeIcon == Icons.light_mode
          ? const Color(0xffffffff)
          : const Color(0xff0F0F0F),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(bottom: 16),
              alignment: Alignment.bottomLeft,
              width: double.infinity,
              height: 320,
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
                      text: '   Order',
                      style: GoogleFonts.labrada(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const OrderView(),
            const SizedBox(
              height: 70,
            ),
            const TotalPriceShow(),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: SizedBox(
                width: 200,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    if (cart.isEmpty) {
                    } else {
                      showDialog(
                        barrierDismissible: false,
                        context: context,
                        builder: (context) => const DialogShow(),
                      );
                    }
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        const Color(
                            0xffBBD4CE)), // Set your desired background color
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            10.0), // Adjust the radius as needed
                      ),
                    ),
                  ),
                  child: const Text(
                    'Order now',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
