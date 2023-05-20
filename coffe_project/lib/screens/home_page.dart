import 'package:flutter/material.dart';
import 'package:scroll_snap_list/scroll_snap_list.dart';

// ignore: camel_case_types
class Home_page extends StatelessWidget {
  const Home_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.shopping_basket))
        ],
        leading: Icon(Icons.people_alt),
      ),
      body: Column(
        children: [
          // SizedBox(
          //   height: 250,
          //   child: ScrollSnapList(
          //   // itemBuilder: itemBuilder,
          //   // itemCount: itemCount,
          //   // itemSize: itemSize,
          //   // onItemFocus: onItemFocus,
            
          // ),
          // ),

          MaterialButton(
            onPressed: () {
          Navigator.pushNamed(context, '/signup');
            },
            child: Text("кнопка"),
          ),
        ],
      ),
    );
  }
}
