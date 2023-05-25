// import 'package:firebase_database/firebase_database.dart';
// import 'package:flutter/material.dart';

// import '../Widget/product.dart';

// List<Product> productLis = [];

// var fb = FirebaseDatabase.instance.ref();

// // void gf(i) async {
// //   var snapshot = await fb.child('post/$i').get();
// //   String title = snapshot.child('title').value.toString();
// //   int cost = snapshot.child('cost').value as int;
// //   String imagePate = snapshot.child('imagePate').value.toString();
// //   int reviewCount = 20;
// //   // imagePate, title, cost, reviewCount;
// //   // print(cost);
// // }

// class peg {
//   final title;
//   final cost;
//   final imagePate;
//   final reviewCount = 20;

//   peg(this.title, this.cost, this.imagePate);

//   String get getId => imagePate;
//   String get getTitle => title;
//   int get getQuantity => cost;
// }

// class addnote extends StatefulWidget {
//   @override
//   _addnoteState createState() => _addnoteState();
// }

// class _addnoteState extends State<addnote> {
//   // List<Product> productLisat = [
//   //   // Product('images/coffee_01.png', "Латте", 100, 20),
//   //   // Product('images/coffee_02.png', "Эспрессо", 200, 30),
//   //   // Product('images/coffee_03.png', "Латте-макиато", 300, 40),
//   //   Product('images/Unknown 6.png', "Раф", 300, 40),
//   //   Product('images/Unknown 5.png', "Мокко", 300, 40),
//   //   Product('images/Unknown 4.png', "Латте", 300, 40),
//   //   Product('images/Unknown-8 1.png', "Экпрессо", 300, 40),
//   //   Product('images/Unknown 7.png', "Латте-макиато", 300, 40),
//   // ];

//   @override
//   Widget build(BuildContext context) {
//     Future<String> gf(i) async {
//       var snapshot = await fb.child('post/$i').get();
//       return  snapshot.value.toString() ;
//     }
//      Map s;


//     return Scaffold(
//       appBar: AppBar(
//         title:
    
//         Text("sffklg" ),
//         backgroundColor: Colors.indigo[900],
//       ),
//       body: Center(
//           child: MaterialButton(
//         child: Container(
//           width: 50,
//           height: 50,
//           color: Colors.amber,
//         ),
//         onPressed: () {},
//       )),
//     );
//   }
// }
