import 'package:flutter/material.dart';


class MyOrders extends StatelessWidget {
  const MyOrders({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
       decoration: BoxDecoration(
        image: DecorationImage(
            fit: BoxFit.fill, image: AssetImage('images/register.png')),
      ),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          title: Text("Мои заказы",style:TextStyle(color: Colors.black)),
        ),
        body: Center(
          child: Container(
            child:  Text("""В истории заказов пусто :(
                      Всё еще впереди!"""),
            ),
          ),
        
        
        ),
    );
  }
}