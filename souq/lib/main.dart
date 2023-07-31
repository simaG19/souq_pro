import 'package:flutter/material.dart';
import 'package:modernlogintute/controller/route.dart';
// import '../view/pages/grid.dart';
// import '../controller/route.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}
