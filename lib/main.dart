import 'package:flutter/material.dart';
import 'modules/home_page/home_page.dart';

void main() {
  runApp(const MyApp());
  // final NewsService newsService= NewsService();
  // newsService.getNews();
  //   NewsService(dio:Dio()).getNews().then((value){
  //     print('calling data successfully');
  //   }).catchError((error){
  //     print('error while calling getNews method ${error.toString()}');
  //   });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        primaryColor: Colors.tealAccent,
        textTheme: Theme.of(context).textTheme.apply(bodyColor: Colors.black),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      home: const HomePage(
          // country: 'us',
          ),
    );
  }
}
