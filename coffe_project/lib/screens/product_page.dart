import 'package:coffe_project/Widget/product.dart';
import 'package:coffe_project/Widget/utils.dart';
import 'package:flutter/material.dart';

import '../Widget/product.dart';
import '../Widget/product.dart';
import '../Widget/product.dart';


class Product_information extends StatelessWidget {

  final Product product;

  Product_information(this.product);

  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration:BoxDecoration( 
        image: DecorationImage(image: AssetImage('images/register.png')),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text("ESPRESSWAY",style: SafeGoogleFont('SF Pro Display',fontSize: 22,fontWeight:FontWeight.w700),),
        leading: MaterialButton(onPressed: () {
          
        },
        child:  Icon(Icons.supervised_user_circle_rounded),
        ),
      ),
      body: Column(
        children: [
          Center(
            child: Text(product.title,style: TextStyle(color: Colors.black), )
            
          ),
        ],
      ),
    ),);
  }
  
}