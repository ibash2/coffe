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
        child:  Image.asset('images/profil.png', height: 18),
        ),
        actions: [MaterialButton(onPressed: () {
          
        },
        child:  Image.asset('images/profil.png', height: 18),
        ),],
      ),
      body: Column(
        children: [
          Center(
           
          ),
          Container(
            child: Image.asset(product.imagePate),
          ),
          Center(
            child: Text(product.title,style: SafeGoogleFont('Sarala',color: Colors.white,fontSize: 24,fontWeight: FontWeight.w700), )
            
          ),
          
          Center(
            child: Text("${product.cost}\р",style: SafeGoogleFont('Sarala',color: Color.fromRGBO(64, 64, 64, 1),fontSize: 20,fontWeight: FontWeight.w700), )
          )
        ],
      ),
    ),);
  }
  
}