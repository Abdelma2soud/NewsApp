import 'package:flutter/material.dart';
import 'package:news_app/models/Tile_ListViewBuilder/Tile_ListViewBuilder.dart';
import '../../models/ListView_Widgets/Card_ListView.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });
  // final String? country;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'News',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            Text('Cloud',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.orange)),
          ],
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(child: Card_ListView()),
            const SliverToBoxAdapter(
                child: SizedBox(
              height: 18,
            )),
            Tile_ListViewBuilder(
              CatItem: 'general',
            ),
          ],
        ),
      ),
    );
  }
}
