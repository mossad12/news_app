import 'package:flutter/material.dart';
import 'package:newsapp/Model/NewsResponce.dart';
import 'package:newsapp/Model/category_model.dart';
import 'package:newsapp/My_Them.dart';
import 'package:newsapp/Settings/Settings_widget.dart';
import 'package:newsapp/categoryDetailes/categoryDetails.dart';
import 'package:newsapp/categoryDetailes/category_tabs.dart';
import 'package:newsapp/drawer/drawer_item.dart';

class HomeScreen extends StatefulWidget{
  static const String routName='homeScreen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
        appBar: AppBar(
          toolbarHeight: MediaQuery.of(context).size.height*0.10,
          actions: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child:selectedCategory==null?
                  Text('')
                  :
              Icon(Icons.search,
                size: 30,),
            ),
          ],
          title:
          Text(SelectedItem==DrawerItem.settings?
              'Settings'
              :
              selectedCategory==null?
          'News App'
            :
          selectedCategory?.title??''),
        ),
          drawer: Drawer(
            child: DrawerItem(
              onDrawerClick: onDrawerClick,
            ),
          ),
          body:SelectedItem==DrawerItem.settings?
              SettingsWidget()
              :
          selectedCategory==null?
          CategoryTabs(onCategoryclick:clickCategory ,)
              :
         categoryDetails(category: selectedCategory!),

      ),]
    );
  }

   CategoryDM? selectedCategory;

  News? selectedNews;

  void clickCategory(CategoryDM newSelectedCategory){
    selectedCategory=newSelectedCategory;
    setState(() {

    });

  }
  int SelectedItem=DrawerItem.categories;
  onDrawerClick(int newSelectedItem){
  SelectedItem=newSelectedItem;
  selectedCategory=null;
  Navigator.pop(context);
  setState(() {

  });

  }

  void newsContent(News newSelectedNews){
    selectedNews=newSelectedNews;
    setState(() {

    });
  }


}