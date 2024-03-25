import 'package:flutter/material.dart';
import 'package:newsapp/Model/SorceResponse.dart';
import 'package:newsapp/My_Them.dart';


class tabItem extends StatelessWidget {
bool isChecked ;
Source source;
tabItem({required this.isChecked,required this.source});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 4,horizontal:6 ),
      margin: EdgeInsets.only(top: 10,bottom: 8),

      decoration: BoxDecoration(
          color:isChecked==true?
          MyThem.greenColor
              :
          Colors.transparent,
        borderRadius: BorderRadius.circular(25),
        border: Border.all(
          color: MyThem.greenColor,
          width: 2,
        )
      ),
      child: Text(source.name??'No Name',
      style: Theme.of(context).textTheme.titleMedium!.copyWith(
        color: isChecked==true?
        MyThem.whiteColor
            :
        MyThem.greenColor,
        fontSize: 18
      )),

    );
  }
}
