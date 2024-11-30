import 'package:flutter/material.dart';
import '../ArticleModel/ArticleModel.dart';
import '../ListTile_Model/List_Tile.dart';

class Tile_ListView extends StatelessWidget {
  final List<ArticleModel> articles;

  const Tile_ListView({super.key, required this.articles});
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: articles.length,
        (context, index) => ListTileCategory(
          article: articles[index],
        ),
      ),
    );
  }
}
