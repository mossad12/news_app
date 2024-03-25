import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:newsapp/Api/apiConstants.dart';
import 'package:newsapp/Model/NewsResponce.dart';
import 'package:newsapp/Model/SorceResponse.dart';
class apiManager {

static Future<SorceResponse?> getSource(String categoryId)async{
  Uri url=Uri.https(apiConstants.baseurl,apiConstants.sourceApi,
  {
    'apiKey': '26447d68f7034afea093ba9c393176c0',
    'category':categoryId
  });
    try{
      var response = await http.get(url);
      var responseBody=response.body;
      var responseJson=jsonDecode(responseBody);
      return SorceResponse.fromJson(responseJson);
    }catch(e){
         throw e;
    }

}

static Future<NewsResponce> getNews(String sourseId)async{
  Uri url=Uri.https(apiConstants.baseurl,apiConstants.NewsApi,
      {
        'apiKey': '26447d68f7034afea093ba9c393176c0',
        'sources' : sourseId
      });
  try{
    var response = await http.get(url);
    var responseBody=response.body;
    var responseJson=jsonDecode(responseBody);
    return NewsResponce.fromJson(responseJson);
  }catch(e){
    throw e;
  }

}

}