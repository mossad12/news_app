import 'package:flutter/material.dart';
import 'package:newsapp/My_Them.dart';

class CategoryDM{
  String id;
  String title;
  String imagePath;
  Color color;
  CategoryDM({required this.id,required this.title,required this.imagePath,required this.color});

  static List<CategoryDM> getCategories(){

    return [
      CategoryDM(id: 'sports', title: 'Sports',
  imagePath: 'assets/images/ball.png', color: MyThem.redColor),

  CategoryDM(id: 'general', title: 'General',
  imagePath: 'assets/images/Politics.png', color: MyThem.darkblueColor),

  CategoryDM(id: 'health', title: 'Health',
  imagePath: 'assets/images/health.png', color: MyThem.roseColor),

  CategoryDM(id: 'business', title: 'Business',
  imagePath: 'assets/images/bussines.png', color: MyThem.brownColor),

  CategoryDM(id: 'entertainment', title: 'Entertainment',
  imagePath: 'assets/images/environment.png', color: MyThem.blueColor),

  CategoryDM(id: 'science', title: 'Science',
  imagePath: 'assets/images/science.png', color: MyThem.yellowColor),

  CategoryDM(id: 'technology', title: 'Technology',
  imagePath: 'assets/images/science.png', color: MyThem.greyColor),
  ];
}
}

