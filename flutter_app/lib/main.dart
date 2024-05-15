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
        body: ListView.builder(
          itemCount: names.length,
          itemBuilder: (context, index) => ListTile(
            title: Text(names[index]),
          ),
        ),
      ), // skelleton widget that holds different parts of app
    );
  }
}