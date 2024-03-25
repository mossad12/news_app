import 'package:flutter/material.dart';
import 'package:newsapp/Settings/Settings_widget.dart';
import 'package:newsapp/home/HomeScreen.dart';
import 'package:newsapp/My_Them.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{


  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routName,
      routes: {
         HomeScreen.routName:(context)=>HomeScreen(),
        SettingsWidget.routName:(context)=>SettingsWidget(),

      },
      theme: MyThem.lightThem,
    );

  }


}