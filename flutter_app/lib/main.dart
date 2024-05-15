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
        body: Center(
          child: GestureDetector(
            onTap: () {
              //do something when tapped!
              print("Tapped!");
            },
            child: Container(
            height: 200,
            width: 200,
            color: Colors.white,
            child: Center(
              child: Text(
                "Tap me!"
                ),
            ),
          ),
          ),
        ),
      ), // skelleton widget that holds different parts of app
    );
  }
}