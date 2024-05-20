import 'package:flutter/material.dart';

class ToDoTile extends StatelessWidget {
  const ToDoTile({super.key});

  @override
  Widget build(BuildContext context) {
    

    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Container(
        padding: const EdgeInsets.all(20.0),
        child: Text("test test"),
        decoration: BoxDecoration(
          color: Colors.yellow,
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}