import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

//stateless
//stateful

class MyApp extends StatelessWidget {
  MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    int counter = 0;

    while (counter < 10) {
      print(counter);
      counter++;
    }

    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(),
    );
  }
}
