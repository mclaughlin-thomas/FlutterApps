import 'package:flutter/material.dart';
import 'package:flutter_app/util/my_button.dart';

class DioalogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;


  DioalogBox({
    super.key,
    required this.controller,
    required this.onSave,
    required this.onCancel,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.white,
      content: Container(
        height: 120,
        child: Column( 
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

          children: [
          

            //get user io

            TextField(
              controller: controller,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Add a new task to do',  
              ),
            ),

          
            //button

            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
              

                //save
                MyButton(text: "Save", onPressed: onSave),

                const SizedBox(width: 8),

                //cancel
                MyButton(text: "Cancel", onPressed: onCancel),

              ],
            )



          ],
        ),
      )
    );
  }
}