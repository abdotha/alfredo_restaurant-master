import 'package:alfredo_restaurant/book_table/time_screen.dart';
import 'package:alfredo_restaurant/models/model.dart';
import 'package:alfredo_restaurant/models/splash_screen2.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:alfredo_restaurant/menu/menu_data.dart';
import 'package:alfredo_restaurant/dish_discription/dish_disc.dart';
var mesg = 'test';
var mesg2 = 'test2';
var iconin = Icons.task_alt;
var iconColor = 0xFF66BB6A12;
var adultColor = 0xFF000000;
var timeColor = 0xFF000000;

class PeopleBooking extends StatefulWidget {
  const PeopleBooking({super.key});
  @override
  State<PeopleBooking> createState() => _PeopleBookingState();
}

class _PeopleBookingState extends State<PeopleBooking> {
  bool f = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: themeIcon == Icons.light_mode
          ? const Color(0xffffffff)
          : const Color(0xff0F0F0F),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 150,
              child: Stack(
                children: <Widget>[
                  SizedBox(
                    width: double.infinity,
                    child: Image.asset(
                      'images/pic6.jpeg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(5.0),
                    alignment: Alignment.bottomCenter,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: <Color>[
                          Colors.black.withAlpha(0),
                          Colors.black12,
                          Colors.black45
                        ],
                      ),
                    ),
                    child: Text(
                      'Alfredo',
                      style: GoogleFonts.labrada(
                        color: Colors.white,
                        fontSize: 35,
                        letterSpacing: 1,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                        size: 28,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(color: Colors.white, boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 10,
                  offset: const Offset(0, 3), // changes position of shadow
                ),
              ]),
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    '$timeBook PM',
                    style: const TextStyle(
                        fontSize: 20,
                        color: Color(0xffBBD4CE),
                        fontWeight: FontWeight.bold),
                  ),
                  const Icon(Icons.schedule),
                  const Text(
                    '|',
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                  Text(
                    '$adultNum Adult',
                    style: const TextStyle(
                        fontSize: 20,
                        color: Color(0xffBBD4CE),
                        fontWeight: FontWeight.bold),
                  ),
                  const Text(
                    '|',
                    style: TextStyle(fontSize: 25),
                  ),
                  Text(
                    '$childNum Children',
                    style: const TextStyle(
                        fontSize: 20,
                        color: Color(0xffBBD4CE),
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Center(
              child: Text(
                'Book a table',
                style: GoogleFonts.labrada(
                  color: Color(textColor),
                  fontSize: 38,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
             Center(
              child: Text('Adult',
                  style: TextStyle(
                    color: Color(textColor),
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  )),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FloatingActionButton(
                  heroTag: 'adult++',
                  backgroundColor: const Color(0xffBBD4CE),
                  child: const Icon(Icons.add),
                  onPressed: () {
                    setState(() {
                      adultNum++;
                    });
                  },
                ),
                Text(
                  '$adultNum',
                  style:  TextStyle(
                    color: Color(textColor),
                    fontSize: 50,
                  ),
                ),
                FloatingActionButton(
                  heroTag: 'adult--',
                  backgroundColor: const Color(0xffBBD4CE),
                  child: const Icon(Icons.remove),
                  onPressed: () {
                    setState(() {
                      if (adultNum != 0) {
                        adultNum--;
                      }
                    });
                  },
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
             Center(
              child: Text('Children',
                  style: TextStyle(
                    color: Color(textColor),
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  )),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FloatingActionButton(
                  heroTag: 'child++',
                  backgroundColor: const Color(0xffBBD4CE),
                  child: const Icon(Icons.add),
                  onPressed: () {
                    setState(() {
                      childNum++;
                    });
                  },
                ),
                Text('$childNum',
                    style:  TextStyle(
                      color: Color(textColor),
                      fontSize: 50,
                    )),
                FloatingActionButton(
                  heroTag: 'child--',
                  backgroundColor: const Color(0xffBBD4CE),
                  child: const Icon(Icons.remove),
                  onPressed: () {
                    setState(() {
                      if (childNum != 0) {
                        childNum--;
                      }
                    });
                  },
                ),
              ],
            ),
            const SizedBox(
              height: 100,
            ),
            SizedBox(
              height: 50,
              width: 300,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(const Color(
                      0xffBBD4CE)), // Set your desired background color
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        10.0,
                      ), // Adjust the radius as needed
                    ),
                  ),
                ),
                onPressed: () {
                  f = false;
                  if (timeBook <= 0) {
                    mesg = 'Error';
                    mesg2 = 'You did not choose the booking time';
                    iconin = Icons.priority_high;
                    iconColor = 0xFFFF0000;
                    timeColor = 0xFFFF0000;
                    adultColor = textColor;
                    f = true;
                  } else {
                    if (adultNum <= 0) {
                      mesg = 'Error';
                      mesg2 = 'A table must at least have one adult';
                      iconin = Icons.priority_high;
                      iconColor = 0xFFFF0000;
                      adultColor = 0xFFFF0000;
                      timeColor = textColor;
                      f = true;
                    } else {
                      mesg = 'Booking confirmed';
                      mesg2 = 'See you soon';
                      iconin = Icons.task_alt;
                      iconColor = 0xff4caf50;
                      adultColor = textColor;
                      timeColor = textColor;
                    }
                  }
// When the button is pressed, show the dialog
                  showDialog(
                    barrierDismissible: false,
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        backgroundColor: themeIcon == Icons.light_mode
                            ? const Color(0xffffffff)
                            : const Color(0xff0F0F0F),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        title: Column(
                          children: [
                            SizedBox(
                              height: 80,
                              child: Icon(
                                iconin,
                                color: Color(iconColor),
                                size: 80,
                              ),
                            ),
                            Text(
                              mesg,
                              style: GoogleFonts.labrada(
                                color: Color(textColor),
                                fontSize: 25,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                        content: SizedBox(
                          height: 180,
                          child: Column(
                            children: [
                              Text(
                                mesg2,
                                textAlign: TextAlign.center,
                                style: TextStyle(

                                  color: Color(textColor),
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              const Divider(
                                color: Colors.black,
                                thickness: 1,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                   Icon(
                                    Icons.schedule,
                                    color: Color(textColor),
                                  ),
                                  const SizedBox(
                                    width: 4,
                                  ),
                                  Text(
                                    '$timeBook:00 PM',
                                    style: TextStyle(
                                        color: Color(timeColor),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                   Icon(
                                    Icons.person,
                                    color: Color(textColor),
                                  ),
                                  const SizedBox(
                                    width: 4,
                                  ),
                                  Text(
                                    '$adultNum ',
                                    style: TextStyle(
                                        color: Color(adultColor),
                                        fontWeight: FontWeight.bold),
                                  ),
                                   Text(
                                    ':person',
                                    style: TextStyle(
                                      color: Color(textColor),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                   Text(
                                    '.',
                                    style: TextStyle( color: Color(textColor),
                                        fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                   Icon(Icons.child_care,
                                    color: Color(textColor),),
                                  const SizedBox(
                                    width: 4,
                                  ),
                                  Text(
                                    '$childNum ',
                                    style:  TextStyle(
                                        color: Color(textColor),
                                        fontWeight: FontWeight.bold),
                                  ),
                                   Text(
                                    ':kids',
                                    style: TextStyle(
                                      color: Color(textColor),
                                    )
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        actions: [
                          Center(
                            child: SizedBox(
                              width: 200,
                              child: ElevatedButton(
                                style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                    (f == true
                                        ? const Color(0xffC75450)
                                        : const Color(0xffBBD4CE)),
                                  ), // Set your desired background color
                                  shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(
                                          10.0), // Adjust the radius as needed
                                    ),
                                  ),
                                ),
                                onPressed: () {
                                  if (f == true) {
                                    Navigator.pop(context);
                                  }
                                  // Close the dialog when this button is pressed
                                  else {
                                    adultNum = 0;
                                    childNum = 0;
                                    timeBook = 0;
                                    dishNumList.clear();
                                    cart.clear();
                                    Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              const SplashScreen2(),

                                        ));
                                  }
                                },
                                child: Text(f == true ? 'Cancel' : 'Close'),
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                  );
                },
                child: const Text("Confirm"),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
