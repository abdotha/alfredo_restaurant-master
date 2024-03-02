import 'package:alfredo_restaurant/rigistration/login.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:alfredo_restaurant/models/splash_screen2.dart';
import '../dish_discription/description_screen.dart';
import '../models/model.dart';

var themeIcon=Icons.light_mode;
var textColor=0xff000000;
class MenuData extends StatefulWidget {
  const MenuData({super.key});

  @override
  State<MenuData> createState() => _MenuDataState();
}

class _MenuDataState extends State<MenuData> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: themeIcon == Icons.light_mode
        ? const Color(0xffffffff)
        : const Color(0xff0F0F0F),
      appBar: AppBar(
        backgroundColor: const Color(0xffBBD4CE),
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const Login(),
                ));
          },
          icon: const Icon(
            Icons.logout_sharp,
            size: 25,
            color: Colors.black,
          ),
        ),
        title: Text(
          'Menu',
          style: GoogleFonts.labrada(
            color: Colors.black,
            fontSize: 25,
            letterSpacing: 1,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {
            setState(() {
              if(themeIcon==Icons.light_mode) {
                themeIcon = Icons.dark_mode;
                textColor=0xffffffff;
              }
              else {
                themeIcon = Icons.light_mode;
                textColor=0xff000000;
              }
              Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (
                    context) => const SplashScreen2(),),);
            });
          }, icon: Icon(themeIcon))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 11,
        vertical: 11),
        child: GridView.builder(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
          ),
          itemBuilder: (context, index) => GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DescriptionScreen(index: index),
                ),
              );
            },
            child: Column(
              children: [
                Stack(
                  children:[
                    Container(
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      width: double.infinity,
                      height: 175,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),),
                      child:
                      Image.asset(
                        dishDisc[index]['dishImage'],
                        fit: BoxFit.fill,
                      ),
                    ),
                    Container(
                      width: 175,
                      height: 175,
                      padding: const EdgeInsets.all(5.0),
                      alignment: Alignment.bottomCenter,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
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
                        dishDisc[index]['dishName'],
                        style: GoogleFonts.labrada(
                          color: Colors.white,
                          fontSize: 20,
                          letterSpacing: 1,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      ),
                  ]
                ),

              ],
            ),
          ),
          itemCount: dishDisc.length,
        ),
      ),
    );
  }
}
