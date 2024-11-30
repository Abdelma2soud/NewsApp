import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import '../../services/NewsSevice.dart';

import 'package:flutter_spinkit/flutter_spinkit.dart';

import 'ArticleModel/ArticleModel.dart';
import 'ListTile_Model/List_Tile.dart';

class Tile_ListView extends StatefulWidget {
  const Tile_ListView({super.key});

  @override
  State<Tile_ListView> createState() => _Tile_ListViewState();
}

class _Tile_ListViewState extends State<Tile_ListView> {
  List<ArticleModel> articles = [];

  bool isLoading = true;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getGeneralNews();
  }

  Future<void> getGeneralNews() async {
    articles = await NewsService(
      dio: Dio(),
    ).geTopHeadLines(category: 'general');
    setState(() {
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? SliverToBoxAdapter(
            child: Container(
                height: 520,
                alignment: Alignment.center,
                child: const Center(
                  child: SpinKitDoubleBounce(
                    color: Colors.blueAccent,
                    size: 50.0,
                  ),
                )),
          )
        : SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: articles.length,
              (context, index) => ListTileCategory(
                article: articles[index],
              ),
            ),
          );
  }
}
