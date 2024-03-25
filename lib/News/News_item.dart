import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:newsapp/Model/NewsResponce.dart';
import 'package:newsapp/My_Them.dart';
import 'package:newsapp/News/News_contant.dart';





class NewsItem extends StatefulWidget {

 News news;
 NewsItem({required this.news});

  @override
  State<NewsItem> createState() => _NewsItemState();
}

class _NewsItemState extends State<NewsItem> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
       Navigator.of(context).push(MaterialPageRoute(
           builder: (context){
             return NewsContent(news: widget.news,title: widget.news.author??'',);
           }));
        setState(() {

        });
      },
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Container(
          padding: EdgeInsets.only(bottom: 10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              color: Color(0xf383535),
              width: 5

            )
          ),
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(topLeft:Radius.circular(20) ,topRight:Radius.circular(20) ),
                  child: CachedNetworkImage(
                    imageUrl: widget.news.urlToImage??'',
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height*0.22,
                      fit: BoxFit.fill,
                    placeholder: (context, url) => Center(child: CircularProgressIndicator(color: MyThem.greenColor,)),
                    errorWidget: (context, url, error) => Icon(Icons.error),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
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
                  padding: const EdgeInsets.all(5.0),
                  child: Text('${DateFormat.yMd().format((DateTime.parse(widget.news.publishedAt ?? '')))}',
                    textAlign: TextAlign.right,
                    style: Theme.of(context).textTheme.titleSmall!.copyWith(
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                      color: MyThem.greyColor.withOpacity(0.6)
                  ),),
                ),
              ],
            )
        ),
      ),
    );
  }



}
