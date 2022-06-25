import 'package:flutter/material.dart';

void main() => runApp(const HelloWorld());

class HelloWorld extends StatelessWidget {
  const HelloWorld({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'First App',
        home: Scaffold(
            appBar: AppBar(
              title: const Text('Home Page'),
            ),
            body: const Center(
              child: Text('Hello World'),
            )));
  }
}
