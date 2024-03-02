import 'package:alfredo_restaurant/menu/menu_screen.dart';
import 'package:alfredo_restaurant/order/order_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class SplashScreen3 extends StatefulWidget {
  const SplashScreen3({super.key});

  @override
  State<SplashScreen3> createState() => _SplashScreen3State();
}

class _SplashScreen3State extends State<SplashScreen3> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 1), () {
      // Navigator.pop(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: SpinKitChasingDots(
        color: Colors.white,
        duration: Duration(seconds: 2),
      ),
    );
  }
}
