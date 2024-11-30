import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:lottie/lottie.dart';
import 'package:news_app/models/ArticleModel/ArticleModel.dart';
import 'package:news_app/services/NewsSevice.dart';

import '../ListView_Widgets/Tile_Listview.dart';

class Tile_ListViewBuilder extends StatefulWidget {
  const Tile_ListViewBuilder({super.key, required this.CatItem, });
  final String CatItem;
  // final String? country;

  @override
  State<Tile_ListViewBuilder> createState() => _Tile_ListViewBuilderState();
}

class _Tile_ListViewBuilderState extends State<Tile_ListViewBuilder> {
  List<ArticleModel> articles = [];

  bool isLoading = true;
  var future;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    future = NewsService(dio: Dio()).geTopHeadLines(category: widget.CatItem);
    // getGeneralNews() ;
  }
  // Future<void> getGeneralNews() async {
  //   articles=await NewsService(dio:Dio()).getNews();
  //   setState(() {
  //     isLoading=false;
  //   });}
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
        future: future,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return
              Tile_ListView(articles: snapshot.data!);
          }
          else if (snapshot.hasError) {
            return SliverToBoxAdapter(
              child: Lottie.network(
                  'https://lottie.host/eeb9ddfb-239c-41ad-975f-7edbfcb033a2/fJ9w3qFHeK.json',
                height:200,
                width: 200,
              ),


            );
          }
          else
          {
            return
            SliverToBoxAdapter(
                child: Container(
                height: 520,
                alignment: Alignment.center,
                child:const Center(
                child: SpinKitDoubleBounce(
                color: Colors.blueAccent,
                size: 50.0,
            ),
          ) ));

          }
        }


    );
  }
}
/*isLoading?SliverToBoxAdapter(
      child: Container(
          height: 520,
          alignment: Alignment.center,
          child:const Center(
            child: SpinKitDoubleBounce(
              color: Colors.blueAccent,
              size: 50.0,
            ),
          ) ),
 ): Tile_ListView(articles: articles);
  }
  */