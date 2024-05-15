import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "First Page"
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.blueGrey,
        child: Column (
          children: [
            DrawerHeader(
              child: Icon (
                Icons.favorite,
                size: 100,
              ),
            ),

            //home page
            ListTile(
              leading: Icon (
                Icons.home
              ),
              title: Text(
                "H o m e"
              ),
              onTap: () {
                //pop the drawer
                Navigator.pop(context);
                Navigator.pushNamed(context, '/homepage');
              }
            ),

            ListTile(
              leading: Icon (
                Icons.settings
              ),
              title: Text(
                "S e t t i n g s"
              ),
              onTap: () {
                //pop the drawer
                Navigator.pop(context);
                Navigator.pushNamed(context, '/settingspage');
              }
            ),

            //settings page
          ],
      ),
      ),

    );
  }
}