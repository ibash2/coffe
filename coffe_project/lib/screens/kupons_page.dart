import 'package:flutter/material.dart';


class MyKupons extends StatelessWidget {
  const MyKupons({super.key});

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
          centerTitle: true,
          title: Text("Мои купоны",style: TextStyle(color: Colors.black),),
        ),
        body: Center(
          child: Text(
            "Тут пока пусто."
          ),
        ),
      ),
    );
  }
}