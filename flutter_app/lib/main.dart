import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  List names = ["John", "Doe", "Jane", "Doe"];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // remove debug banner
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 104, 203, 252),
        body: GridView.builder(
            itemCount: 64,
            gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
            itemBuilder: (context, index) => Container(
              color: Colors.white,
              margin: EdgeInsets.all(2),
            ),
        )
      ), // skelleton widget that holds different parts of app
    );
  }
}