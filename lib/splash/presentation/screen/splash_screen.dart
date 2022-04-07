import 'package:e_commerce_admin_flutter/core/my_colors.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'EGY Trade',
          style: TextStyle(
            fontSize: 60,
            color: MyColors.orangeColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
