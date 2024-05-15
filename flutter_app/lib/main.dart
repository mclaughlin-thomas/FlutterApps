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
        body: Stack(
          children: [
            Container(
              height: 300,
              width: 300,
              color: Colors.red ,
            ),
            Container(
              height: 200,
              width: 200,
              color: Color.fromARGB(255, 37, 100, 87) ,
            ),
            Container(
              height: 100,
              width: 100,
              color: Color.fromARGB(255, 160, 101, 145) ,
            ),
          ],
        ),
      ), // skelleton widget that holds different parts of app
    );
  }
}