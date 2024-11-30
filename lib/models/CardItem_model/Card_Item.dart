import 'package:flutter/material.dart';
import 'package:news_app/modules/CategoryView/CategoryView.dart';
import '../ListView_Widgets/Card_ListView.dart';
class CardItem extends StatelessWidget {
  const CardItem({super.key, required this.cardObj});
  final CategoryCard cardObj;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Padding(
        padding: const EdgeInsets.only(right: 10.0),
        child: Container(
          height: 100,
          width: 180,
          decoration:  BoxDecoration(
            borderRadius: BorderRadius.circular(12.0),
              image: DecorationImage(
                image:AssetImage(
                    cardObj.img),
                fit: BoxFit.fill,
              )
          ),
          child: Center(child: Container(
              decoration:const BoxDecoration(
                color: Colors.white70
              ),
              child: Text(cardObj.txt,style:const TextStyle(color: Colors.black)))),

        ),
      ),onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=> CategoryView(CategoryCard: cardObj.txt,)));
    },
    );
  }
}
