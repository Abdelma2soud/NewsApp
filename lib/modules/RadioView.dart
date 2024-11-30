// import 'package:flutter/material.dart';
// import 'package:news_app/modules/home_page/home_page.dart';
//
// class RadioListExample extends StatefulWidget {
//   @override
//   _RadioListExampleState createState() => _RadioListExampleState();
// }
//
// class _RadioListExampleState extends State<RadioListExample> {
//   String? selectedcountry;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Select the country :'),
//       ),
//       body: ListView(
//         children: [
//           RadioListTile(
//             title: const Text('Egypt'),
//             value: 'eg',
//             groupValue: selectedcountry,
//             onChanged: (value) {
//               setState(() {
//                 selectedcountry = value as String?;
//               });
//             },
//           ),
//           RadioListTile(
//             title:const Text('United State'),
//             value: 'us',
//             groupValue: selectedcountry,
//             onChanged: (value) {
//               setState(() {
//                 selectedcountry = value as String?;
//               });
//             },
//           ),
//           RadioListTile(
//             title: const Text('France'),
//             value: 'fr',
//             groupValue: selectedcountry,
//             onChanged: (value) {
//               setState(() {
//                 selectedcountry = value as String?;
//               });
//             },
//           ),
//           const SizedBox(height: 20,),
//           IconButton(onPressed: (){
//             Navigator.push(context, MaterialPageRoute(builder: (context)=> HomePage(country: selectedcountry,)));
//           }, icon:const Icon(Icons.arrow_forward,size: 50,))
//         ],
//       ),
//     );
//   }}