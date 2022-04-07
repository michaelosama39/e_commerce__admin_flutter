import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:e_commerce_admin_flutter/home/presentation/screen/home_screen.dart';
import 'package:e_commerce_admin_flutter/splash/presentation/screen/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimatedSplashScreen(
        splash: SplashScreen(),
        duration: 2500,
        nextScreen: HomeScreen(),
      ),
    );
  }
}