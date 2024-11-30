import 'package:flutter/material.dart';
import '../CardItem_model/Card_Item.dart';

class Card_ListView extends StatelessWidget {
  // const ({super.key});
  final List<CategoryCard> cards = const [
    CategoryCard(img: 'assets/business.avif', txt: 'Business'),
    CategoryCard(img: 'assets/entertaiment.avif', txt: 'Entertainment'),
    CategoryCard(img: 'assets/general.avif', txt: 'General'),
    CategoryCard(img: 'assets/science.avif', txt: 'Science'),
    CategoryCard(img: 'assets/sports.avif', txt: 'Sports'),
    CategoryCard(img: 'assets/technology.jpeg', txt: 'Technology'),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(

          scrollDirection: Axis.horizontal,
          itemCount: cards.length,
          itemBuilder: (context, index) => CardItem(
                cardObj: cards[index],
              )),
    );
  }
}

class   CategoryCard {
  final String img;
  final String txt;
  const CategoryCard({required this.img, required this.txt});
}
