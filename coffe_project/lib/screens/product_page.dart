import 'package:coffe_project/Widget/product.dart';
import 'package:flutter/material.dart';

import '../Widget/product.dart';
import '../Widget/product.dart';
import '../Widget/product.dart';


class Product_information extends StatelessWidget {

  final Product product;

  Product_information(this.product);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("ESPRESSWAY",style: TextStyle(fontSize: 30),),
      ),
      body: Column(
        children: [
          Center(
            child: Text(product.title,style: TextStyle(color: Colors.black), )
            
          ),
        ],
      ),
    );
  }
}