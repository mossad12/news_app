import 'package:flutter/material.dart';
import 'package:newsapp/Model/category_model.dart';
import 'package:newsapp/categoryDetailes/category_item.dart';

class CategoryTabs extends StatelessWidget {
var categorylist=CategoryDM.getCategories();
Function onCategoryclick;
CategoryTabs({required this.onCategoryclick});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Text('Pick your category \n of interest',
              style: Theme.of(context).textTheme.titleSmall,),
          ),

          Expanded(
            child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 15,
              crossAxisSpacing: 15,
            ),
            itemBuilder: (context,index){
                  return InkWell(
                    onTap: (){
                       onCategoryclick(categorylist[index]);
                    },
                      child: CategoryItem(categorydm:categorylist[index],index: index ));
            },
              itemCount: categorylist.length,
            ),
          )
        ],
      ),
    );
  }
}
