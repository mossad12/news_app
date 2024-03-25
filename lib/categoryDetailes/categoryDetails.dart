import 'package:flutter/material.dart';
import 'package:newsapp/Api/Api_Manager.dart';
import 'package:newsapp/Model/category_model.dart';
import 'package:newsapp/categoryDetailes/tap_widget.dart';
import '../Model/SorceResponse.dart';
import '../My_Them.dart';

class categoryDetails extends StatefulWidget {
  static const String routName='category';
  CategoryDM category;
  categoryDetails({required this.category});

  @override
  State<categoryDetails> createState() => _categoryDetailsState();
}

class _categoryDetailsState extends State<categoryDetails> {
  @override
  Widget build(BuildContext context) {
    return Stack(

        children:[

          Scaffold(
            backgroundColor: Colors.transparent,
            body: FutureBuilder<SorceResponse?>(
                future: apiManager.getSource(widget.category.id),
                builder: (context,snapshot){
                  if(snapshot.connectionState==ConnectionState.waiting){
                    return Center(
                      child:CircularProgressIndicator(
                        color: MyThem.greenColor,
                      ) ,
                    );
                  }
                  else if(snapshot.hasError){
                     return Column(
                       children: [
                         Text('Some Thing went wrong'),
                         ElevatedButton(onPressed: (){
                           apiManager.getSource(widget.category.id);
                           setState(() {

                           });
                         }, child: Text('Try Again'))
                       ],
                     );
                  }
                  if(snapshot.data?.status!='ok'){
                    return Column(
                      children: [
                        Text(snapshot.data?.message??'Some Thing went wrong2'),
                        ElevatedButton(onPressed: (){
                          apiManager.getSource(widget.category.id);
                          setState(() {

                          });
                        }, child: Text('Try Again'))
                      ],
                    );
                  }
                  var sourceList=snapshot.data?.sources??[];
                  return tapWidget(sourseList: sourceList);

                }),

          ),]
    );
  }
}
