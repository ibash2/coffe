import 'dart:io';

import 'package:coffe_project/Widget/utils.dart';
import 'package:coffe_project/screens/adress_page.dart';
import 'package:coffe_project/screens/home_page.dart';
import 'package:coffe_project/screens/kupons_page.dart';
import 'package:coffe_project/screens/setting_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'orders_screen.dart';


class MyProfile extends StatelessWidget {
  const MyProfile({super.key});

  @override
  Widget build(BuildContext context) {
    var user = FirebaseAuth.instance.currentUser;
    print(user?.email);
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            fit: BoxFit.fill, image: AssetImage('images/register.png')),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(315.0), // here the desired height
          child: AppBar(
            flexibleSpace: Column(children: [
              SizedBox(height: 130,),
               Center(
              child: CircleAvatar(
                radius: 66,
                backgroundColor: Colors.grey,
              ),
              
            ),
            Center(
              child: Container(
                width: 125,
                child: TextField(
                  decoration: InputDecoration(border:OutlineInputBorder(borderSide: BorderSide.none),
                    hintText: "${user?.email}",
                    hintStyle: SafeGoogleFont('SF Pro Display',
                      color: Colors.black,
                      fontSize: 23,
                      fontWeight: FontWeight.w500,
                      
                    )
                  ),
                ),
              ),
            ),
            ],),
            shadowColor: Colors.white,
            elevation: 0,
            shape: OutlineInputBorder(borderSide: BorderSide(color: Colors.transparent), borderRadius: BorderRadius.only(bottomLeft: Radius.circular(45),bottomRight: Radius.circular(45))),
          leading: IconButton(onPressed: () {
            Navigator.push(context,MaterialPageRoute(builder:(context) => Home_page(),));
            
          },
          icon: Icon(Icons.arrow_back),color: Colors.black,),
          backgroundColor: Color.fromRGBO(255, 255, 255, 0.2),
          centerTitle: true,
          title: Text("Профиль",style: TextStyle(color: Colors.black, fontSize: 16,fontWeight: FontWeight.w600),),
        ),),
        body: Column(

          children: [
            SizedBox(height: 3,),
            Center(
              child: MaterialButton(
                elevation: 0,
                shape: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(45)),borderSide: BorderSide(color: Colors.transparent)),
                height: 69,
                color: Color.fromRGBO(255, 255, 255, 0.2),
                child:
                 Row(
                   children: [
                     Image.asset('images/shopping-bag.png',height: 24),
                     SizedBox(width: 27,),
                     Align( alignment: Alignment.centerLeft,child: Text("Мой адрес",style: SafeGoogleFont('SF Pro Display',fontSize: 17,fontWeight: FontWeight.w600),)),
                   ],
                 ),
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onPressed: (){
                  Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => MyOrders()));
                },
              ),
            ),
            SizedBox(height: 3,),
            Center(
              child: MaterialButton(
                elevation: 0,
                shape: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(45)),borderSide: BorderSide(color: Colors.transparent)),
                height: 69,
                color: Color.fromRGBO(255, 255, 255, 0.2),
                child:
                 Row(
                   children: [
                     Image.asset('images/map.png',height: 24),
                     SizedBox(width: 27,),
                     Align( alignment: Alignment.centerLeft,child: Text("Мой адрес",style: SafeGoogleFont('SF Pro Display',fontSize: 17,fontWeight: FontWeight.w600),)),
                   ],
                 ),
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onPressed: (){
                  Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => MyOrders()));
                },
              ),
            ),
            SizedBox(height: 3,),
              Center(
              child: MaterialButton(
                elevation: 0,
                shape: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(45)),borderSide: BorderSide(color: Colors.transparent)),
                height: 69,
                color: Color.fromRGBO(255, 255, 255, 0.2),
                child:
                 Row(
                   children: [
                     Image.asset('images/credit-card.png',height: 24),
                     SizedBox(width: 27,),
                     Align( alignment: Alignment.centerLeft,child: Text("Мои карты",style: SafeGoogleFont('SF Pro Display',fontSize: 17,fontWeight: FontWeight.w600),)),
                   ],
                 ),
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onPressed: (){
                  Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => MyOrders()));
                },
              ),
            ),
            SizedBox(height: 3,),
            Center(
              child: MaterialButton(
                elevation: 0,
                shape: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(45)),borderSide: BorderSide(color: Colors.transparent)),
                height: 69,
                color: Color.fromRGBO(255, 255, 255, 0.2),
                child:
                 Row(
                   children: [
                     Image.asset("images/award.png",height: 24),
                     SizedBox(width: 27,),
                     Align( alignment: Alignment.centerLeft,child: Text("Мои купоны",style: SafeGoogleFont('SF Pro Display',fontSize: 17,fontWeight: FontWeight.w600),)),
                   ],
                 ),
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onPressed: (){
                  Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => MyOrders()));
                },
              ),
            ),
            SizedBox(height: 3,),
             Center(
              child: MaterialButton(
                elevation: 0,
                shape: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(45)),borderSide: BorderSide(color: Colors.transparent)),
                height: 69,
                color: Color.fromRGBO(255, 255, 255, 0.2),
                child:
                 Row(
                   children: [
                     Image.asset('images/sliders.png',height: 24),
                     SizedBox(width: 27,),
                     Align( alignment: Alignment.centerLeft,child: Text("Настройки",style: SafeGoogleFont('SF Pro Display',fontSize: 17,fontWeight: FontWeight.w600),)),
                   ],
                 ),
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onPressed: (){
                  Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => MyOrders()));
                },
              ),
            ),
            SizedBox(height: 3,),
            
            Center(
              child: MaterialButton(
                elevation: 0,
                shape: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(45)),borderSide: BorderSide(color: Colors.transparent)),
                height: 69,
                color: Color.fromRGBO(255, 255, 255, 0.2),
                child:
                 Row(
                   children: [
                     Image.asset('images/minimize-2.png',height: 24),
                     SizedBox(width: 27,),
                     Align( alignment: Alignment.centerLeft,child: Text("Выход",style: SafeGoogleFont('SF Pro Display',fontSize: 17,fontWeight: FontWeight.w600),)),
                   ],
                 ),
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onPressed: (){
                  Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => MyOrders()));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}