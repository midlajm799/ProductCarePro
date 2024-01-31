import 'package:flutter/material.dart';
import 'package:sample/Firsttt.dart';

import 'Shop.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:FirstPage1(),
    );
  }
}
