import "package:coffe_project/Widget/utils.dart";
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
          centerTitle: true,
          title: Text("Корзина",style: TextStyle(color: Colors.black),),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Center(
          child: Container(
            width: 345,
            height: 490,
            decoration: BoxDecoration(
              color: Color.fromRGBO(255, 255, 255, 0.129),
              borderRadius: BorderRadius.circular(62),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
              SizedBox(height: 54,),
              Image.asset("images/Shopping Basket.png",height: 201,),
              Text('Ваша корзина пуста :(',style: SafeGoogleFont('Sarala',fontSize: 16,fontWeight: FontWeight.w400),),
              SizedBox(height: 44,),
              MaterialButton(onPressed: (){},
              height: 54,
              minWidth: 209,
              elevation: 0,
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              shape: OutlineInputBorder(borderSide: BorderSide(width: 1, color: Colors.black)),
              color: Colors.transparent,

              child: Text('Вернуться в меню',style: SafeGoogleFont('Sarala',fontSize: 16,fontWeight: FontWeight.w400),),
              )


            ],) ),
          ),
        ),
      );
    
  }
}