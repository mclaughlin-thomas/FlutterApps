import 'package:flutter/material.dart';

//statefull widget does
class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {

  //variable
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    }); // set state is used for stateful widgets and rebuilds widget
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('You have pushed the button this many times:'),

            Text(
              _counter.toString(),
              style: TextStyle(fontSize: 40),
            ),
            ElevatedButton(
              onPressed: _incrementCounter,
              child: Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}
