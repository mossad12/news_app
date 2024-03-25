import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../Model/NewsResponce.dart';
import '../My_Them.dart';


class NewsContent extends StatefulWidget {
  static const String routName='';
  String title;
  News news;
  NewsContent({ required this.news,required this.title});

  @override
  State<NewsContent> createState() => _NewsContentState();
}

class _NewsContentState extends State<NewsContent> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
     appBar: AppBar(
       toolbarHeight: MediaQuery.of(context).size.height*0.10,
       title:Text(widget.title) ,
     ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: CachedNetworkImage(
                  imageUrl: widget.news.urlToImage??'',
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height*0.28,
                  fit: BoxFit.fill,
                  placeholder: (context, url) => Center(child: CircularProgressIndicator(color: MyThem.greenColor,)),
                  errorWidget: (context, url, error) => Icon(Icons.error),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(widget.news.author??"",style: Theme.of(context).textTheme.titleSmall!.copyWith(
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                    color: MyThem.greyColor.withOpacity(0.6)
                ),),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(widget.news.title??'',style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    fontSize: 20
                ),

                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text('${DateFormat.yMd().format((DateTime.parse(widget.news.publishedAt ?? '')))}',
                  textAlign: TextAlign.right,
                  style: Theme.of(context).textTheme.titleSmall!.copyWith(
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                      color: MyThem.greyColor.withOpacity(0.6)
                  ),),
              ),
              Divider(
                thickness: 1,
                endIndent: 20,
                indent: 20,
                color: MyThem.greenColor,
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(widget.news.content??'',style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    fontSize: 20
                ),
                ),
              ),
              InkWell(
                onTap: (){


                  setState(() {

                  });
                },
                child: Padding(
                  padding: const EdgeInsets.only(top:50 ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('View Full Article',style: Theme.of(context).textTheme.titleLarge,),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(Icons.arrow_forward_sharp,
                          size: 20,),
                      ),
                    ],),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
  // lancherUrl(Uri url)async{
  //   var url=Uri.parse(widget.news.url??'');
  //   if(!await lancherUrl(url)){
  //     throw Exception('Couldint lunch $url');
  //   }
  //   setState(() {
  //
  //   });
  // }
}
