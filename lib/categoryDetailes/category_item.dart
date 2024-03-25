import 'package:flutter/material.dart';
import 'package:newsapp/Model/category_model.dart';

class CategoryItem extends StatelessWidget {

CategoryDM categorydm;
int index;
CategoryItem({required this.categorydm,required this.index});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: categorydm.color,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(25) ,
          topLeft:Radius.circular(25) ,
          bottomRight:Radius.circular(
              index % 2==0? 0 : 25
          ) ,

          bottomLeft: Radius.circular(
              index % 2==0? 25 : 0
          )
        )
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(categorydm.imagePath),
            Text(categorydm.title,style: Theme.of(context).textTheme.titleMedium!.copyWith(
              fontSize: 20
            ),),
          ],
        ),
      ),
    );
  }
}
