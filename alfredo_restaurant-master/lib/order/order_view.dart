import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../book_table/time_screen.dart';
import '../dish_discription/dish_disc.dart';
import '../models/model.dart';
import '../dish_discription/description_screen.dart';



class OrderView extends StatefulWidget {
  const OrderView({super.key});

  @override
  State<OrderView> createState() => _OrderViewState();
}

class _OrderViewState extends State<OrderView> {
  double updateTotalPrice(double price,int index) {

    setState(() {
      totalPrice -= price*dishNumList[index][1];
      dishNumList.removeAt(index);
    });
    return totalPrice;
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: cart.length,
      padding: const EdgeInsets.only(left: 16, right: 16),
      itemBuilder: (context, index) => Dismissible(
        key: UniqueKey(),
        onDismissed: (direction) {
          setState(
            () {
              double dismissedItemPrice = cart[index]['dishPrice'];
              cart.removeAt(index);
              totalPrice = updateTotalPrice(dismissedItemPrice,index);
            },
          );
        },
        child: ListTile(
          trailing: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('X${dishNumList[index][1]}',),
            ],
          ),
         onTap:() {
           Navigator.push(
             context,
             MaterialPageRoute(
               builder: (context) => DescriptionScreen(index: dishNumList[index][0]),
             ),
           );
         },
          leading: Container(
            width: 90,
            height: 150,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
            ),
            child: Image(
              image: AssetImage(cart[index]['dishImage']),
              fit: BoxFit.cover,
            ),
          ),
          title: Text(
            cart[index]['dishName'],
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w400,
            ),
          ),
          subtitle: Text(
            '${cart[index]['dishPrice']}',
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}

class TotalPriceShow extends StatefulWidget {
  const TotalPriceShow({super.key});
  @override
  State<TotalPriceShow> createState() => _TotalPriceShowState();
}

class _TotalPriceShowState extends State<TotalPriceShow> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      width: 260,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.grey[200],
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('subTotal'),
              Text('$totalPrice EGP'),
            ],
          ),
          const Divider(
            color: Colors.black,
            thickness: 1,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Taxes'),
              Text('30 EGP'),
            ],
          ),
          const Divider(
            color: Colors.black,
            thickness: 1,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Total',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text('${totalPrice + 30} EGP'),
            ],
          ),
        ],
      ),
    );
  }
}

class DialogShow extends StatefulWidget {
  const DialogShow({super.key});

  @override
  State<DialogShow> createState() => _DialogShowState();
}

class _DialogShowState extends State<DialogShow> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      title: const Icon(
        Icons.task_alt,
        color: Colors.green,
        size: 70,
      ),
      content: Text(
        'Ordered Successfully',
        style: GoogleFonts.labrada(
          color: Colors.black,
          fontSize: 22,
          fontWeight: FontWeight.w600,
        ),
      ),
      actions: [
        Center(
          child: ElevatedButton(
            onPressed: () {
              cart.clear();
              totalPrice = 0;
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const TimeBooking(),
                ),
              );
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
              'Book Table',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
