import 'package:flutter/material.dart';

import '../../models/Tile_ListViewBuilder/Tile_ListViewBuilder.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key, required this.CategoryCard});
  final String CategoryCard;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Padding(
        padding: const EdgeInsets.all(15.0),
        child: CustomScrollView(
          slivers: [
            Tile_ListViewBuilder(CatItem:CategoryCard,)
          ],
        ),
      ) ,
    );
  }
}
