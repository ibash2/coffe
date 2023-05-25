import 'dart:io';
import 'package:coffe_project/Widget/utils.dart';
import 'package:coffe_project/screens/basket_page.dart';
import 'package:coffe_project/screens/loginin.dart';
import 'package:coffe_project/screens/profile.dart';
import 'package:coffe_project/screens/sigin_page.dart';
import 'package:coffe_project/screens/signup_page.dart';
import 'package:coffe_project/screens/product_page.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:scroll_snap_list/scroll_snap_list.dart';
import '../Widget/product.dart';
import 'home_reg_widget.dart';

int cot = 0;
gt(cot) {
  if (cot == 1) {
    return kof();
  } else {
    return Pon();
  }
}

// ignore: camel_case_types
class Home_page extends StatefulWidget {
  const Home_page({super.key});

  @override
  State<Home_page> createState() => _Home_pageState();
}

class _Home_pageState extends State<Home_page> with TickerProviderStateMixin {
  int indexpage = 0;

  Color k = Color.fromRGBO(255, 156, 72, 1);
  Color g = Colors.white;
  var h;

  List<Product> productList = [
    // Product('images/coffee_01.png', "Латте", 100, 20),
    // Product('images/coffee_02.png', "Эспрессо", 200, 30),
    // Product('images/coffee_03.png', "Латте-макиато", 300, 40),
    Product('images/Unknown 6.png', "Раф", 300, 40),
    Product('images/Unknown 5.png', "Мокко", 300, 40),
    Product('images/Unknown 4.png', "Латте", 300, 40),
    Product('images/Unknown-8 1.png', "Экпрессо", 300, 40),
    Product('images/Unknown 7.png', "Латте-макиато", 300, 40),
  ];

  Future<Map> gf(i) async {
    final fb = FirebaseDatabase.instance.ref();
    final snapshot = await fb.child('post/$i').get();
    return snapshot.value as Map;
  }

  Widget build(BuildContext context) {
    cot = cot;

    TabController _tabController = TabController(length: 2, vsync: this);
    final mediaQuery = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            fit: BoxFit.fill, image: AssetImage('images/Frame 9.png')),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          leading: MaterialButton(
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onPressed: () {
                if (FirebaseAuth.instance.currentUser != null) {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MyProfile(),
                      ));
                } else {
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
                        heightFactor: 550 / mediaQuery.height,
                        child: signin_menu(),
                      );
                    },
                  );
                }
              },
              child: Image.asset(
                'images/profil.png',
                height: 18,
              )),
          centerTitle: true,
          title: Text(
            "ESPRESSWAY",
            style: SafeGoogleFont('SF Pro Display',
                color: Colors.black, fontSize: 22, fontWeight: FontWeight.w700),
          ),
          actions: [
            MaterialButton(
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MyBasket()));
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Image.asset(
                  'images/corz.png',
                  height: 21,
                  width: 20,
                ),
              ),
            )
          ],
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        body: Column(children: [
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
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MaterialButton(
                onPressed: () {
                  cot = 1;
                  if (cot == 1) {
                    k = Color.fromRGBO(255, 156, 72, 1);
                    g = Colors.white;
                  }
                  setState(() {
                    gt(cot);
                  });
                },
                minWidth: 150,
                height: 55,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(28))),
                color: k,
                child: Text(
                  'Напитки',
                  style: SafeGoogleFont('Sarala',
                      fontSize: 20, fontWeight: FontWeight.w700, color: g),
                ),
              ),
              SizedBox(
                width: 32,
              ),
              MaterialButton(
                onPressed: () {
                  cot = 0;
                  if (cot == 0) {
                    k = Colors.white;
                    g = Color.fromRGBO(255, 156, 72, 1);
                  }
                  setState(() {
                    gt(cot);
                  });
                },
                minWidth: 150,
                height: 55,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(28))),
                color: g,
                child: Text(
                  'Пончики',
                  style: SafeGoogleFont('Sarala',
                      fontSize: 20, fontWeight: FontWeight.w700, color: k),
                ),
              ),
            ],
          ),
          gt(cot),
        ]),
      ),
    );
  }

  final fb = FirebaseDatabase.instance.ref();

  Widget _buildListItem(BuildContext context, int index) {
    final g = FutureBuilder(
        future: gf(index),
        builder: (context, snapshot) {
          return snapshot.data!['imagePate'];
        });
    // final g = gf(1);
    // print(g);

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
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Product_information(product)));
            },
            child: Column(
              children: [
                FutureBuilder(
                    future: gf(index),
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {

                      return Image.asset(
                        snapshot.data!['imagePate'],
                        // product.imagePate,
                        fit: BoxFit.cover,
                        height: 250,
                      );}
                       return CircularProgressIndicator();
                    }
                    ),
                Text(
                  product.title,
                  style: SafeGoogleFont('Sarala',
                      fontWeight: FontWeight.w400, fontSize: 21),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '${product.cost}р',
                        style: SafeGoogleFont('Sarala',
                            fontWeight: FontWeight.w700, fontSize: 21),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Pon extends StatelessWidget {
  const Pon({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
      child: Container(
        child: ListView(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            children: [
              Container(
                child: Row(
                  children: [
                    Container(
                      height: 87,
                      child: Image.asset('images/Rectangle 3.png'),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, top: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Фиолетовый с посыпкой",
                            style: SafeGoogleFont(
                              'Inter',
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Text(
                            '120р',
                            style: SafeGoogleFont(
                              'Sarala',
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(6, 4),
                        color: Color.fromRGBO(0, 0, 0, 0.25),
                        blurRadius: 4,
                      ),
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30)),
                height: 87,
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: Row(
                  children: [
                    Container(
                      height: 87,
                      child: Image.asset('images/Rectangle 3 (1).png'),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, top: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Клубничный",
                            style: SafeGoogleFont(
                              'Inter',
                              fontSize: 24,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Text(
                            '120р',
                            style: SafeGoogleFont(
                              'Sarala',
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(6, 4),
                        color: Color.fromRGBO(0, 0, 0, 0.25),
                        blurRadius: 4,
                      ),
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30)),
                height: 87,
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: Row(
                  children: [
                    Container(
                      height: 87,
                      child: Image.asset('images/Rectangle 3 (2).png'),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, top: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Черничный",
                            style: SafeGoogleFont(
                              'Inter',
                              fontSize: 24,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Text(
                            '120р',
                            style: SafeGoogleFont(
                              'Sarala',
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(6, 4),
                        color: Color.fromRGBO(0, 0, 0, 0.25),
                        blurRadius: 4,
                      ),
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30)),
                height: 87,
              ),
            ]),
      ),
    );
  }
}

class kof extends StatelessWidget {
  const kof({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
      child: Container(
        child: Column(children: [
          Container(
            height: 50,
            color: Colors.black,
          ),
          Container(
            height: 50,
            color: Colors.white,
          ),
          Container(
            height: 50,
            color: Colors.white,
          ),
          Container(
            height: 50,
            color: Colors.white,
          ),
        ]),
      ),
    );
  }
}
