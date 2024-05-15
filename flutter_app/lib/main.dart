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
  
  List numbers = [1, 2, 3, 4, 5];
  void PrintNums() {
      for (int i = 0; i < numbers.length; i++) {
        print(numbers[i]);
      }
    }

  @override
  Widget build(BuildContext context) {
    PrintNums();
  

    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(),
    );
  }
}
