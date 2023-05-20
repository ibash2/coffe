import 'package:flutter/material.dart';
import 'package:scroll_snap_list/scroll_snap_list.dart';

// ignore: camel_case_types
class Home_page extends StatelessWidget {
  const Home_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: MaterialButton(
        onPressed: () {
          Navigator.pushNamed(context, '/signup');
        },
        child: Text("кнопка"),
      )),
    );
  }
}
