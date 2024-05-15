import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

//stateless
//stateful

class MyApp extends StatelessWidget {
  MyApp({super.key});


  void greet() {
    print('Hello');
  }

  @override
  Widget build(BuildContext context) {
    greet();
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(),
    );
  }
}
