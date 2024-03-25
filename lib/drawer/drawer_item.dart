import 'package:flutter/material.dart';
import 'package:newsapp/My_Them.dart';
import 'package:newsapp/Settings/Settings_widget.dart';
import 'package:newsapp/home/HomeScreen.dart';

class DrawerItem extends StatelessWidget {
static const int categories= 1;
static const int settings= 2;
Function onDrawerClick;
DrawerItem({required this.onDrawerClick});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height*0.25,
            decoration: BoxDecoration(
              color: MyThem.greenColor,

            ),
            child: Center(child: Text('News App ',style: Theme.of(context).textTheme.titleMedium,)),
          ),
           Padding(
             padding: const EdgeInsets.all(15.0),
             child: InkWell(
               onTap: (){
                 onDrawerClick(categories);
               },
               child: Row(
                children: [
                  Icon(Icons.list,
                    color: Colors.black,
                    size: 25,),
                  SizedBox(width: MediaQuery.of(context).size.width*0.03,),
                  Text('Categories',style: Theme.of(context).textTheme.titleLarge,)
                ],
          ),
             ),
           ),
           Padding(
             padding: const EdgeInsets.all(15.0),
             child: InkWell(
               onTap: (){
                 onDrawerClick(settings);
               },
               child: Row(
                children: [
                  Icon(Icons.settings,
                  color: Colors.black,
                  size: 25,),
                  SizedBox(width: MediaQuery.of(context).size.width*0.03,),
                  Text('Settings',style: Theme.of(context).textTheme.titleLarge)
                ],
          ),
             ),
           ),
        ],
      ),
    );
  }
}
