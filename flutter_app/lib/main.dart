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

  void greetPerson(String name){
    print("Hello " + name);
  }

  @override
  Widget build(BuildContext context) {
    String name = "John";
    greet();
    greetPerson(name);
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(),
    );
  }
}
