import 'package:dio/dio.dart';
import 'package:news_app/models/ArticleModel/ArticleModel.dart';
class NewsService {
  final Dio dio;
  // final String? country;
  NewsService({required this.dio});
  Future<List<ArticleModel>>geTopHeadLines({required String category})
  async {
    print('we are in getnews function');
    var response = await dio.get(
        // 'https://newsapi.org/v2/top-headlines?country=us&apiKey=a131c099afec4c86b9722b3c3537b147&category=sports');
        'https://newsapi.org/v2/top-headlines?country=us&apiKey=a131c099afec4c86b9722b3c3537b147&category=$category');
    // عشان امسك ال response في ايدي هحطه في متغير
    // ولان الداتا الراجعة على هيئة map خليت نوعه  Map<String , dynamic>
    Map<String, dynamic> jsonData = response.data;
    List<dynamic> articles = jsonData['articles'];
    //list فاضية اخزن فيها الداتا اللي جيالي من نوع ماب على هيئة اوبجيكتس
    List<ArticleModel> articleList = [];
    //*********هعمل loop عشان الف على كل الداتا اللي عندي
    // for(var article in jsonData['articles']){
    for (var article in articles) {
      //عمل اوبجيكت واديله القيم بتاعته من ال jsondata اللي جايالي
      ArticleModel articleModel = ArticleModel(
          image: article['urlToImage'],
          title: article['title'],
          subTitle: article['description'],
          news:article ['url']);


      //هضيف كل اوبجيكت يطلع من اللوب في الليسته الفاضيه اللي عندي
      articleList.add(articleModel);
    }//for loop
    // print(articleList);
    return articleList;

  }
}
