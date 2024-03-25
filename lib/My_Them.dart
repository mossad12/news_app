import 'dart:ui';
import 'package:flutter/material.dart';

class MyThem{
  static Color greenColor=Color(0xff39A552);
  static Color greyColor=Color(0xff4F5A69);
  static Color whiteColor=Color(0xffffffff);
  static Color blackColor=Color(0xff303030);
  static Color darkblueColor=Color(0xff003E90);
  static Color redColor=Color(0xffC91C22);
  static Color roseColor=Color(0xffED1E79);
  static Color brownColor=Color(0xffCF7E48);
  static Color blueColor=Color(0xff4882CF);
  static Color yellowColor=Color(0xffF2D352);

  static ThemeData lightThem =ThemeData(
    primaryColor: greenColor,
  appBarTheme: AppBarTheme(
    centerTitle: true,
    backgroundColor: greenColor,
     shape: RoundedRectangleBorder(
       borderRadius: BorderRadius.only(
         bottomLeft: Radius.circular(50),bottomRight: Radius.circular(50),
       )
     )
  ),
    textTheme: TextTheme(
      titleLarge: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: blackColor,
      ),
      titleMedium: TextStyle(
        fontSize: 25,
        color: whiteColor,
      ),
      titleSmall: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.bold,
        color: greyColor,
      )
    )
  );
}