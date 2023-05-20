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

class _Home_pageState extends State<Home_page> {
  int indexpage = 0;
  List<Product> productList = [
    Product('images/coffee_01.png', "Kapushino", 100, 20),
    Product('images/coffee_02.png', "Nigo", 200, 30),
    Product('images/coffee_03.png', "GelMunna", 300, 40),
  ];
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    return Container(
      decoration:BoxDecoration( 
        image: DecorationImage(fit: BoxFit.fill,image: AssetImage('images/register.png')),
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
                          heightFactor: 430/mediaQuery.height,
                          child: Reg_menu(),
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
      body: SizedBox(
        height: 250,
        child: ScrollSnapList(
          itemBuilder: _buildListItem,
          itemCount: productList.length,
          itemSize: 150,
          onItemFocus: (index) {},
          dynamicItemSize: true,
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.grey,
        color: Colors.grey.shade200,
        animationDuration: Duration(milliseconds: 300),
        items: [
          Icon(Icons.coffee, color: Colors.black),
          Icon(
            Icons.donut_small_sharp,
          ),
          Icon(
            Icons.coffee_maker,
            color: Colors.black,
          ),
        ],
      ),
    ));
  }

  Widget _buildListItem(BuildContext context, int index) {
    Product product = productList[index];
    return SizedBox(
      width: 175,
      height: 300,
      child: Card(
        elevation: 0,
        color: Colors.transparent,
        child: ClipRRect( 

          borderRadius: const BorderRadius.all(Radius.circular(10)),
          child: MaterialButton(
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
                  width: 150,
                  height: 180,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  product.title,
                  style: const TextStyle(fontSize: 15),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '\$${product.cost}',
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '${product.reviewCount} Reviews',
                        style: const TextStyle(color: Colors.blue),
                      )
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
