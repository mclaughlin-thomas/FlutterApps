import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());

  print(10 % 4); // appears in debug console
}

//stateless
//stateful

class MyApp extends StatelessWidget {
  MyApp({super.key});

  String name = "Ham";
  int age = 20;
  double height = 5.5;
  bool isMale = false;

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(),
    );
  }
}
