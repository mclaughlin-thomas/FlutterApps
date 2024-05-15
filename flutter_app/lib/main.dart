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
  
  List <int> numbers = [1, 2, 2, 2, 5]; // can have dupes
  Set <int> setNumbs = {1, 2, 3, 4, 5}; // no dupes
  //map does key value pairs
  Map user = {
    'name': 'John',
    'age': 30,
    'isMale': true
  };
  void PrintNums() {
      for (int i = 0; i < setNumbs.length; i++) {
        print(setNumbs.elementAt(i));
      }
    }

  @override
  Widget build(BuildContext context) {
    PrintNums();
    print(user['name']);
    print(user['age']);

    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(),
    );
  }
}
