import 'package:alfredo_restaurant/book_table/people_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:alfredo_restaurant/menu/menu_data.dart';
int timeBook = 0;
int dinnerBook = 0;
var x = 0xffBBDfff;
var adultNum = 0;
var childNum = 0;

List<dynamic> lunchArray = [
  0xffffffff,
  0xffffffff,
  0xffffffff,
  0xffffffff,
  0xffffffff,
  0xffffffff,
  0xffffffff,
  0xffffffff,
  0xffffffff,
  0xffffffff,
];

class TimeBooking extends StatefulWidget {
  const TimeBooking({super.key});

  @override
  State<TimeBooking> createState() => _TimeBookingState();
}

class _TimeBookingState extends State<TimeBooking> {
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
             Text(
              'Lunch',
              style: TextStyle(
                color: Color(textColor),
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                      backgroundColor: Color(lunchArray[0])),
                  onPressed: () {
                    setState(() {
                      for (int i = 0; i < 10; i++) {
                        if (i != 0) {
                          lunchArray[i] = 0xffffffff;
                        } else {
                          lunchArray[i] = 0xffBBD4CE;
                        }
                        timeBook = 2;
                      }
                    });
                  },
                  child: const Text(
                    '2 PM',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
                OutlinedButton(
                    style: OutlinedButton.styleFrom(
                        backgroundColor: Color(lunchArray[1])),
                    onPressed: () {
                      setState(() {
                        for (int i = 0; i < 10; i++) {
                          if (i != 1) {
                            lunchArray[i] = 0xffffffff;
                          } else {
                            lunchArray[i] = 0xffBBD4CE;
                          }
                          timeBook = 3;
                        }
                      });
                    },
                    child: const Text(
                      '3 PM',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    )),
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                      backgroundColor: Color(lunchArray[2])),
                  onPressed: () {
                    setState(() {
                      for (int i = 0; i < 10; i++) {
                        if (i != 2) {
                          lunchArray[i] = 0xffffffff;
                        } else {
                          lunchArray[i] = 0xffBBD4CE;
                        }
                        timeBook = 4;
                      }
                    });
                  },
                  child: const Text(
                    '4 PM',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                      backgroundColor: Color(lunchArray[3])),
                  onPressed: () {
                    setState(() {
                      for (int i = 0; i < 10; i++) {
                        if (i != 3) {
                          lunchArray[i] = 0xffffffff;
                        } else {
                          lunchArray[i] = 0xffBBD4CE;
                        }
                        timeBook = 5;
                      }
                    });
                  },
                  child: const Text(
                    '5 PM',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
             Text(
              'Dinner',
              style: TextStyle(
                color: Color(textColor),
                  fontSize: 30, fontWeight: FontWeight.bold),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                OutlinedButton(
                    style: OutlinedButton.styleFrom(
                        backgroundColor: Color(lunchArray[4])),
                    onPressed: () {
                      setState(() {
                        for (int i = 0; i < 10; i++) {
                          if (i != 4) {
                            lunchArray[i] = 0xffffffff;
                          } else {
                            lunchArray[i] = 0xffBBD4CE;
                          }
                          timeBook = 7;
                        }
                      });
                    },
                    child: const Text(
                      '7 PM',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    )),
                OutlinedButton(
                    style: OutlinedButton.styleFrom(
                        backgroundColor: Color(lunchArray[5])),
                    onPressed: () {
                      setState(() {
                        for (int i = 0; i < 10; i++) {
                          if (i != 5) {
                            lunchArray[i] = 0xffffffff;
                          } else {
                            lunchArray[i] = 0xffBBD4CE;
                          }
                          timeBook = 8;
                        }
                      });
                    },
                    child: const Text(
                      '8 PM',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    )),
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                      backgroundColor: Color(lunchArray[6])),
                  onPressed: () {
                    setState(() {
                      for (int i = 0; i < 10; i++) {
                        if (i != 6) {
                          lunchArray[i] = 0xffffffff;
                        } else {
                          lunchArray[i] = 0xffBBD4CE;
                        }
                        timeBook = 9;
                      }
                    });
                  },
                  child: const Text(
                    '9 PM',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
                OutlinedButton(
                    style: OutlinedButton.styleFrom(
                        backgroundColor: Color(lunchArray[7])),
                    onPressed: () {
                      setState(() {
                        for (int i = 0; i < 10; i++) {
                          if (i != 7) {
                            lunchArray[i] = 0xffffffff;
                          } else {
                            lunchArray[i] = 0xffBBD4CE;
                          }
                          timeBook = 10;
                        }
                      });
                    },
                    child: const Text(
                      '10 PM',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    )),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                OutlinedButton(
                    style: OutlinedButton.styleFrom(
                        backgroundColor: Color(lunchArray[8])),
                    onPressed: () {
                      setState(() {
                        for (int i = 0; i < 10; i++) {
                          if (i != 8) {
                            lunchArray[i] = 0xffffffff;
                          } else {
                            lunchArray[i] = 0xffBBD4CE;
                          }
                          timeBook = 11;
                        }
                      });
                    },
                    child: const Text(
                      '11 PM',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    )),
                OutlinedButton(
                    style: OutlinedButton.styleFrom(
                        backgroundColor: Color(lunchArray[9])),
                    onPressed: () {
                      setState(() {
                        for (int i = 0; i < 10; i++) {
                          if (i != 9) {
                            lunchArray[i] = 0xffffffff;
                          } else {
                            lunchArray[i] = 0xffBBD4CE;
                          }
                          timeBook = 12;
                        }
                      });
                    },
                    child: const Text(
                      '12 PM',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    )),
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
                  setState(() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const PeopleBooking(),
                      ),
                    );
                  });
                },
                child: const Text("Next"),
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
