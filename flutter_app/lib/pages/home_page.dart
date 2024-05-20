import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 174, 245, 127),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 158, 204, 72),
        title: Center(child: Text('To Do')),
        elevation: 0,
      ),
      body: ListView(
        children: [
          ToDoList(),
        ],
      ),
    );
  }
}
