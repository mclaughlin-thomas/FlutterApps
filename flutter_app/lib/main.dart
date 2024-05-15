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
        backgroundColor: const Color.fromARGB(255, 104, 203, 252),
        appBar: AppBar(
          title: Text("My app bar"),
          backgroundColor: Color.fromARGB(255, 111, 255, 248),
          elevation: 0,
          leading: Icon(Icons.menu),
          actions: [
            IconButton (
              onPressed: () {},
              icon: Icon(Icons.logout),
            ),
          ],
        ),
        body: Column(),
      ), // skelleton widget that holds different parts of app
    );
  }
}