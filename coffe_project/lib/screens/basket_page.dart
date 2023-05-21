import "package:flutter/material.dart";


class MyBasket extends StatefulWidget {
  const MyBasket({super.key});

  @override
  State<MyBasket> createState() => _MyBasketState();
}

class _MyBasketState extends State<MyBasket> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            fit: BoxFit.fill, image: AssetImage('images/register.png')),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Container(
          width: 345,
          height: 490,
          decoration: BoxDecoration(
            color: Color.fromRGBO(255, 255, 255, 0.129),
            borderRadius: BorderRadius.circular(62),
          ),
        ),
      ),
    );
  }
}