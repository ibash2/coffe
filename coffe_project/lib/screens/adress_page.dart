import 'package:flutter/material.dart';


class MyAdress extends StatelessWidget {
  const MyAdress({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text("Мой адрес",style: TextStyle(color: Colors.black),),
        
      ),
      body: Center(
        child: Column(
          children: [
            TextFormField(
                decoration: InputDecoration(
                  hintText: "Город",
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Улица",
                ),
              ),
          ],
        ),
      ),
    );
  }
}