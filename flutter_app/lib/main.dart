import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
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

    for ( int i = 0; i < 10; i++) {
      print(i);
    }

    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(),
    );
  }
}
