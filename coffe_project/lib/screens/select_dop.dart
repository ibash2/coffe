import 'package:coffe_project/Widget/product.dart';
import 'package:coffe_project/Widget/utils.dart';
import 'package:flutter/material.dart';
import '../Widget/product.dart';
import '../Widget/product.dart';
import '../Widget/product.dart';
import 'home_reg_widget.dart';

class Select_dop extends StatelessWidget {
  final prod;
  final cen;

  Select_dop({super.key, this.prod, this.cen});

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
            onPressed: () {},
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
        body: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Center(
                      child: Text(
                    prod,
                    style: SafeGoogleFont('Sarala',
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.w700),
                  )),
                  Center(
                      child: Text(
                    "${cen}\р",
                    style: SafeGoogleFont('Sarala',
                        color: Color.fromRGBO(64, 64, 64, 1),
                        fontSize: 20,
                        fontWeight: FontWeight.w700),
                  )),
                ],
              ),
              Container(
                width: mediaQuery.width,
                height: 550,
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
                      child: Text(
                        'Ингредиенты',
                        style: SafeGoogleFont('Sarala',
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                            color: Colors.white),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 30),
                            child: Container(
                              child: Image.asset(
                                'images/copo_cafe.png',
                                height: 370,
                              ),
                            ),
                          ),
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Container(
                                  width: 150,
                                  child: ExpansionTile(
                                      children: [Text('sdsd')],
                                      title: Column(
                                        crossAxisAlignment: CrossAxisAlignment.end,
                                        children: [
                                        Text(
                                        'Крем',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontWeight: FontWeight.w700),
                                      ),
                                      Text(
                                        '1  порция',
                                        style: TextStyle(
                                            color: Color.fromRGBO(133, 133, 133, 1),
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400),
                                      ),
                                      ],)),
                                ),
                                Container(
                                  width: 180,
                                  child: ExpansionTile(
                                      children: [Text('sdsd')],
                                      title: Column(
                                        crossAxisAlignment: CrossAxisAlignment.end,
                                        children: [
                                        Text(
                                        'Карамель',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontWeight: FontWeight.w700),
                                      ),
                                      Text(
                                        '2  порция',
                                        style: TextStyle(
                                            color: Color.fromRGBO(133, 133, 133, 1),
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400),
                                      ),
                                      ],)),
                                ),
                               Container(
                                  width: 150,
                                  child: ExpansionTile(
                                      children: [Text('sdsd')],
                                      title: Column(
                                        crossAxisAlignment: CrossAxisAlignment.end,
                                        children: [
                                        Text(
                                        'Молоко',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontWeight: FontWeight.w700),
                                      ),
                                      Text(
                                        '1  порция',
                                        style: TextStyle(
                                            color: Color.fromRGBO(133, 133, 133, 1),
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400),
                                      ),
                                      ],)),
                                ),
                               Container(
                                  width: 150,
                                  child: ExpansionTile(
                                      children: [Text('sdsd')],
                                      title: Column(
                                        crossAxisAlignment: CrossAxisAlignment.end,
                                        children: [
                                        Text(
                                        'Сахар',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontWeight: FontWeight.w700),
                                      ),
                                      Text(
                                        '1  порция',
                                        style: TextStyle(
                                            color: Color.fromRGBO(133, 133, 133, 1),
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400),
                                      ),
                                      ],)),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    // SizedBox(height: 0,)
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
