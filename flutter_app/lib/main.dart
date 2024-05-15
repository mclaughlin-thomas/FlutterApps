import 'package:flutter/material.dart';
import 'package:flutter_app/pages/first_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // remove debug banner
      home: FirstPage(), // skelleton widget that holds different parts of app
    );
  }
}