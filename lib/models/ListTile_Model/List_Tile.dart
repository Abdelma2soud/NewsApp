import 'package:flutter/material.dart';
import 'package:news_app/models/ArticleModel/ArticleModel.dart';
import 'package:news_app/models/webView/webView.dart';

class ListTileCategory extends StatefulWidget {
  const ListTileCategory({super.key, required this.article});

  final ArticleModel article;

  @override
  State<ListTileCategory> createState() => _ListTileCategoryState();
}

class _ListTileCategoryState extends State<ListTileCategory> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => webView(url: widget.article.news)));
      },
      child: Column(
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(15.0),
              child: Image.network(
                widget.article.image ??
                    'https://images.pexels.com/photos/1103833/pexels-photo-1103833.jpeg?auto=compress&cs=tinysrgb&w=600',
                fit: BoxFit.fill,
                width: double.infinity,
                height: 220,
              )),
          const SizedBox(
            height: 16,
          ),
          Text(
            widget.article.title,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 20,
              color: Colors.black,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            widget.article.subTitle ?? '',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
                fontWeight: FontWeight.w700, fontSize: 16, color: Colors.grey),
          ),
          const SizedBox(
            height: 22,
          ),
        ],
      ),
    );
  }
}
