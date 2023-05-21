import 'package:coffe_project/Widget/product.dart';
import 'package:coffe_project/Widget/utils.dart';
import 'package:coffe_project/screens/select_dop.dart';
import 'package:coffe_project/screens/sigin_page.dart';
import 'package:flutter/material.dart';

import '../Widget/product.dart';
import '../Widget/product.dart';
import '../Widget/product.dart';
import 'home_reg_widget.dart';

class Product_information extends StatefulWidget {
  final Product product;

  Product_information(this.product);

  @override
  State<Product_information> createState() => _Product_informationState();
}

class _Product_informationState extends State<Product_information> {
  int cout = 0;

  void counter(){
    cout += 1; 
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    return Container(
      height: double.maxFinite,
      decoration: BoxDecoration(
        image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(
              'images/register.png',
            )),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          title: Text(
            "ESPRESSWAY",
            style: SafeGoogleFont('SF Pro Display',
                fontSize: 22, fontWeight: FontWeight.w700),
          ),
          leading: MaterialButton(
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
                      heightFactor: 550 / mediaQuery.height,
                      child: signin_menu(),
                    );
                  },
                );
            },
            child: Image.asset('images/profil.png', height: 18),
          ),
          actions: [
            MaterialButton(
              minWidth: 25,
              onPressed: () {},
              child: Image.asset('images/corz.png', height: 21),
            ),
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Center(),
                Container(
                  child: Image.asset(
                    widget.product.imagePate,
                    height: 0.33 * mediaQuery.height,
                  ),
                ),
                Center(
                    child: Text(
                  widget.product.title,
                  style: SafeGoogleFont('Sarala',
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.w700),
                )),
                Center(
                    child: Text(
                  "${widget.product.cost}\р",
                  style: SafeGoogleFont('Sarala',
                      color: Color.fromRGBO(64, 64, 64, 1),
                      fontSize: 20,
                      fontWeight: FontWeight.w700),
                )),
              ],
            ),
            Container(
              width: mediaQuery.width,
              height: 300,
              decoration: BoxDecoration(
                  color: Color.fromRGBO(58, 43, 37, 1),
                  borderRadius:
                      BorderRadius.only(topLeft: Radius.circular(50))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 30),
                    child: MaterialButton(
                      onPressed: (){
                        Navigator.push(context,MaterialPageRoute(builder:(context)=> Select_dop(prod: widget.product.title, cen: widget.product.cost,)));
                      },
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      child: Text('Ингредиенты',
                        style: SafeGoogleFont('Sarala',
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                            color: Colors.white))),
                  ),
                  Container(
                    width: mediaQuery.width,
                    height: 200,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                            BorderRadius.only(topLeft: Radius.circular(50))),
                    child: Column(children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 30, left: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Кол-во',
                                style: SafeGoogleFont('Sarala',
                                    fontSize: 24,
                                    fontWeight: FontWeight.w700,
                                    color: Color.fromRGBO(69, 69, 69, 1))),
                            
                            Row(
                              children: [
                                MaterialButton(
                                  onPressed: () {
                                    setState(() {
                                      
                                    });
                                    cout -=1;
                                  },
                                  splashColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  child: Image.asset(
                                    'images/Group 8.png',
                                    height: 36,
                                  ),
                                ),
                             
                            Text(
                              '$cout',
                              style: SafeGoogleFont('Sarala',
                                  fontSize: 24,
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromRGBO(69, 69, 69, 1)),
                            ),
                            MaterialButton(
                              onPressed: () {
                                setState(() {
                                  
                                });
                                counter();
                              },
                              splashColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              child: Image.asset(
                                'images/Group 6.png',
                                height: 36,
                              ),
                            ), ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 35,
                      ),
                      Divider(
                        indent: 20,
                        endIndent: 20,
                        height: 2,
                        thickness: 3,
                        color: Color.fromRGBO(237, 237, 237, 1),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15 ,left: 1),
                        child: Row(children: [
                          MaterialButton(splashColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                            onPressed: (){},
                          child: Image.asset('images/Frame 8.png',height: 60,),
                          ),
                        SizedBox(width: 58,),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8),
                          child: Text('${widget.product.cost*cout}.00р',
                          style: SafeGoogleFont('Sarala',
                                      fontSize: 24,
                                      fontWeight: FontWeight.w400,
                                      color: Color.fromRGBO(69, 69, 69, 1))),
                        )
                        ],),
                      )
                    ]),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
