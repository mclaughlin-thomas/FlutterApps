import 'package:flutter/material.dart';
import 'package:flutter_app/pages/first_page.dart';
import 'package:flutter_app/pages/home_page.dart';
import 'package:flutter_app/pages/settings_page.dart';

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
      routes: {
        '/first': (context) => FirstPage(), // route to '/first' page
        'homepage': (context) => HomePage(), // route to 'homepage' page
        'settings': (context) => SettingsPage(), // route to 'settings' page
      }
    );
  }
}