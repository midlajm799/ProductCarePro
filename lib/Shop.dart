import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sample/sign%20in.dart';

class Shop extends StatelessWidget {
  const Shop({super.key});

  @override
  Widget build(BuildContext context) {
    final Height = MediaQuery.of(context).size.height;
    final Width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
     body: Container(
       height: Height*.5,
       decoration: BoxDecoration(color: Colors.orange),
     ),
    );
  }
}
