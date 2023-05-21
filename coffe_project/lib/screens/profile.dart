import 'dart:io';

import 'package:coffe_project/screens/adress_page.dart';
import 'package:coffe_project/screens/kupons_page.dart';
import 'package:coffe_project/screens/setting_page.dart';
import 'package:flutter/material.dart';

import 'orders_screen.dart';


class MyProfile extends StatelessWidget {
  const MyProfile({super.key});

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
          title: Text("Профиль",style: TextStyle(color: Colors.black),),
        ),
        body: Column(
          children: [
            Center(
              child: CircleAvatar(
                radius: 90,
                backgroundColor: Colors.grey,
              ),
              
            ),
            Center(
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Напишите свое имя",
                ),
              ),
            ),
            Center(
              child:Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(255, 255, 255, 0.2),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ListTile(
                    leading: Icon(Icons.bug_report),
                    title: TextButton(onPressed: (){
                      Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MyOrders()));
                    }, child: Align( alignment: Alignment.centerLeft,child: Text("Мой адрес")),
                  ),
                ),
              ),
            ),
            ),
            Center(
              child:Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(255, 255, 255, 0.2),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ListTile(
                    leading: Icon(Icons.card_travel),
                    title: TextButton(onPressed: (){
                      Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MyAdress()));
                    }, child: Align( alignment: Alignment.centerLeft,child: Text("Мой адрес")),
                  ),
                ),
              ),
            ),
            ),
            Center(
              child:Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(255, 255, 255, 0.2),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ListTile(
                    leading: Icon(Icons.card_travel),
                    title: TextButton(onPressed: (){
                      Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MyAdress()));
                    }, child: Align( alignment: Alignment.centerLeft,child: Text("Мои карты")),
                  ),
                ),
              ),
            ),
            ),
            Center(
              child:Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(255, 255, 255, 0.2),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ListTile(
                    leading: Image.asset("images/Vector.png"),
                    title: TextButton(onPressed: (){
                      Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MyKupons()));
                    }, child: Align( alignment: Alignment.centerLeft,child: Text("Мои купоны")),
                  ),
                ),
              ),
            ),
            ),
            Center(
              child:Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(255, 255, 255, 0.2),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ListTile(
                    leading: Icon(Icons.bug_report),
                    title: TextButton(onPressed: (){
                      Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MySetting()));
                    }, child: Align( alignment: Alignment.centerLeft,child: Text("Настройки")),
                  ),
                ),
              ),
            ),
            ),
            Center(
              child:Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(255, 255, 255, 0.2),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ListTile(
                    leading: Icon(Icons.card_travel),
                    title: TextButton(onPressed: (){
                      Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => exit(hashCode)));
                    }, child: Align( alignment: Alignment.centerLeft,child: Text("Выход")),
                  ),
                ),
              ),
            ),
            ),
          ],
        ),
      ),
    );
  }
}