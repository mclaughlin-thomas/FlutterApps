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
    switch(age){
      case 20:
        print("Age is 20");
        break;
      case 30:
        print("Age is 30");
        break;
      default:
        print("Age is not 20 or 30");
    }

    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(),
    );
  }
}
