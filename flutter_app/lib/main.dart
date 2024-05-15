import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // remove debug banner
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
      ), // skelleton widget that holds different parts of app
    );
  }
}