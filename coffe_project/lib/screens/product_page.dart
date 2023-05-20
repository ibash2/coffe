import 'package:flutter/material.dart';

import '../Widget/product.dart';


class Product_information extends StatefulWidget {
  const Product_information({super.key});

  @override
  State<Product_information> createState() => _Product_informationState();
}

class _Product_informationState extends State<Product_information> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: Text( '\$${Product.cost}'),
      ),
    );
  }
}