import 'dart:io';

import 'package:coffe_project/Widget/utils.dart';
import 'package:coffe_project/screens/loginin.dart';
import 'package:coffe_project/screens/sigin_page.dart';
import 'package:coffe_project/screens/signup_page.dart';
import 'package:coffe_project/screens/product_page.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:scroll_snap_list/scroll_snap_list.dart';

import '../Widget/product.dart';
import 'home_reg_widget.dart';

// ignore: camel_case_types
class Home_page extends StatefulWidget {
  const Home_page({super.key});


  @override
  State<Home_page> createState() => _Home_pageState();
}

class _Home_pageState extends State<Home_page>  with TickerProviderStateMixin {
  
  int indexpage = 0;
  List<Product> productList = [
    Product('images/coffee_01.png', "Kapushino", 100, 20),
    Product('images/coffee_02.png', "Nigo", 200, 30),
    Product('images/coffee_03.png', "GelMunna", 300, 40),
  ];
  Widget build(BuildContext context) {
    
  final TabController _tabController = TabController(length: 2, vsync: this);
    final mediaQuery = MediaQuery.of(context).size;
    return Container(
      decoration:BoxDecoration( 
        image: DecorationImage(fit: BoxFit.fill,image: AssetImage('images/Frame 9.png')),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
      appBar: AppBar(
        leading: MaterialButton(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onPressed: () {
              showModalBottomSheet(
                      backgroundColor: Color(0xffffffff),
                      isScrollControlled: true,
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                        topRight: Radius.circular(16),
                        topLeft: Radius.circular(16),
                      )),
                      context: context,
                      builder: (BuildContext context) {
                        return FractionallySizedBox(
                          heightFactor: 540/mediaQuery.height,
                          child: signin_menu(),
                        );
                      },
                    );
              // Navigator.pushNamed(context, '/loginin');
            },
            child: Icon(
              Icons.people_outline,
              color: Colors.black,
            )),
        centerTitle: true,
        title: const Text(
          "Name",
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          Icon(
            Icons.shopping_basket_rounded,
            color: Colors.black,
          ),
        ],
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 328,
            child: ScrollSnapList(
              itemBuilder: _buildListItem,
              itemCount: productList.length,
              itemSize: 192,
              onItemFocus: (index) {},
              dynamicItemSize: true,
            ),
          ),
          SizedBox(height: 15,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 150,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.transparent,
                  ),
                  child: Center(
                    child: Text(
                      "Напитки",style: TextStyle(color: Colors.black,fontSize: 20),
                    ),
                  ),
                ),
              ),
               Padding(
                 padding: const EdgeInsets.all(8),
                 child: Container(
                  width: 150,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius:BorderRadius.circular(10),
                    color: Colors.transparent,
                  ),
                  child: Center(
                    child: Text(
                      "Пирожные",style: TextStyle(color: Colors.black,fontSize: 20),
                    ),
                  ),
                  ),
               ),
            ],
          ),
          Container(
            height: 100,
            width: 320,
            child: ListView(
              scrollDirection: Axis.vertical,
              children: [
                Container(
                  width: 300,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white
          
                  ),
                  child: Row(
                    children: [
                      Image.asset("images/pirog_1.png",fit: BoxFit.cover,),
                    ],
                  )
                  ),
              ],
            ),
          ),
          
        ]
      ),
     
      
    ),
    
    
    );
  }

  Widget _buildListItem(BuildContext context, int index) {
    Product product = productList[index];
    return SizedBox(
      width: 200,
      height: 400,
      child: Card(
        elevation: 0,
        color: Colors.transparent,
        child: ClipRRect( 

          borderRadius: const BorderRadius.all(Radius.circular(10)),
          child: MaterialButton(
            height: 400,
            minWidth: 320,

            elevation: 0,
            splashColor: Colors.transparent,
            
            highlightColor: Colors.transparent,
            onPressed: () {
              Navigator.push(context,MaterialPageRoute(builder: (context)=> Product_information(product)));
            },
            child: Column(
              children: [
                Image.asset(
                  product.imagePate,
                  fit: BoxFit.cover,
                  height: 250,

                ),
                Text(
                  product.title,
                  style:  SafeGoogleFont('Sarala',fontWeight: FontWeight.w400,fontSize: 21),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '${product.cost}р',
                        style: SafeGoogleFont('Sarala',fontWeight: FontWeight.w700,fontSize: 21),
                      ),
                      
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

