import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'main_page.dart';

class SplashScreenPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Image.asset(
        "assets/images/splashscreen.png",
        width: 200,
        height: 88,
      ),
      nextScreen: MainPage(),
      splashTransition: SplashTransition.rotationTransition,
      pageTransitionType: PageTransitionType.scale, // Ganti dengan animasi yang diinginkan
      backgroundColor: Color.fromARGB(249, 88, 129, 87),
      duration: 1500,
    );
  }
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Splash Screen',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: SplashScreenPage(),
    );
  }
}
