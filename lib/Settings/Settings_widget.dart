import 'package:flutter/material.dart';
import 'package:newsapp/My_Them.dart';


class SettingsWidget extends StatelessWidget {
  static const String routName='settings';
  @override
  Widget build(BuildContext context) {
    return Stack(

      children:[
       Container(
        color: Colors.white,
        child: Image.asset('assets/images/pattern.png',
           width: double.infinity,
          height: double.infinity,
          fit: BoxFit.cover,),
       ),
      Scaffold(
      backgroundColor: Colors.transparent,
        body: Padding(
          padding: const EdgeInsets.only(top: 100,left: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.all(3.0),
                child: Text('Language',style: Theme.of(context).textTheme.titleLarge,),
              ),
              Container(

                margin: EdgeInsets.all(20),
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    color: MyThem.greenColor,
                  borderRadius: BorderRadius.circular(15)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text('English',style: Theme.of(context).textTheme.titleMedium,),
                    SizedBox(width: 110,),
                    Icon(Icons.arrow_drop_down_sharp,color: Colors.white,
                    size: 35,),
                  ],
                ),
              ),
            ],
          ),
        ),
    )
]
    );
  }
}
