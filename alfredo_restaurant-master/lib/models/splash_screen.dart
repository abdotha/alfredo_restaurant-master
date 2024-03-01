import 'package:alfredo_restaurant/rigistration/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const Login(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffBBD4CE),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CircleAvatar(
            backgroundImage: AssetImage('images/pic3.jpeg'),
            radius: 85,
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            'Alfredo Restaurant',
            style: GoogleFonts.labrada(
              color: Colors.black,
              fontSize: 35,
              letterSpacing: 1,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            'Loading....',
            style: GoogleFonts.labrada(
              color: Colors.black,
              fontSize: 30,
              letterSpacing: 1,
              fontWeight: FontWeight.w400,
            ),
          ),
          const Center(
            child: SpinKitChasingDots(
              color: Colors.black,
              duration: Duration(seconds: 3),
            ),
          ),
        ],
      ),
    );
  }
}
