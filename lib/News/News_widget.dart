import 'package:flutter/material.dart';
import 'package:newsapp/Api/Api_Manager.dart';
import 'package:newsapp/Model/NewsResponce.dart';
import 'package:newsapp/Model/SorceResponse.dart';
import 'package:newsapp/News/News_contant.dart';
import 'package:newsapp/News/News_item.dart';
import '../My_Them.dart';

class newsWidget extends StatefulWidget {

Source sourse;
newsWidget({required this.sourse});

  @override
  State<newsWidget> createState() => _newsWidgetState();
}

class _newsWidgetState extends State<newsWidget> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<NewsResponce>(
        future: apiManager.getNews(widget.sourse.id??''),
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
                  apiManager.getNews(widget.sourse.id??'');
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
                  apiManager.getNews(widget.sourse.id??'');
                  setState(() {

                  });
                }, child: Text('Try Again')),

              ],
            );
          }
          var newsList=snapshot.data?.articles??[];
          return ListView.builder(
              itemBuilder: (context,index){
                return NewsItem(news: newsList[index]);
              },
              itemCount: newsList.length,

              );

        });
  }



}
