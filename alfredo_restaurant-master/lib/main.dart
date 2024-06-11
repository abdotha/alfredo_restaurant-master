import 'package:flutter/material.dart';
import 'models/splash_screen.dart';
void main() {
  runApp(const AlfredoRestaurant());
}
class AlfredoRestaurant extends StatelessWidget {
  const AlfredoRestaurant({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
