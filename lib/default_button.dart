import 'package:e_commerce_admin_flutter/core/my_colors.dart';
import 'package:flutter/material.dart';

Widget DefaultButton(String text , int fontSize , Function press){
  return SizedBox(
    width: double.infinity,
    height: 56,
    child: FlatButton(
      child: Text(
        text,
        style: TextStyle(fontSize: 18, color: Colors.white),
      ),
      color: MyColors.orangeColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      onPressed: () async{
        press();
      },
    ),
  );
}