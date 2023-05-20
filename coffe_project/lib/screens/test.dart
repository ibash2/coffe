import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../Widget/utils.dart';

class test extends StatelessWidget {
  const test({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Container(
        width: 100,
        child: ExpansionTile(
          children: [
            Text('sdsd')
          ],
            title: Text(
         'Крем',
         style: TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.w700),
         
                           )),
      ),
    );
      
    
  }
}