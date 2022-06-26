import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'First App',
      theme: ThemeData(primarySwatch: Colors.amber),
      home: const MyHomePage(title: 'MyHomePage'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key, this.title = ''}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Home Page'),
        ),
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
              BoxCustomComponent(name: "Lorem"),
              SizedBox(height: 8.0),
              BoxCustomComponent(name: "Ipsum"),
              SizedBox(height: 8.0),
              BoxCustomComponent(name: "Dolor")
            ])),
        floatingActionButton: FloatingActionButton(
            onPressed: () => print('hello world'),
            tooltip: 'Increment Counter',
            child: const Icon(Icons.add)));
  }
}

class BoxCustomComponent extends StatelessWidget {
  final String name;

  const BoxCustomComponent({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: const BoxDecoration(color: Colors.lightBlueAccent),
      child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
          child: Text(name)),
    );
  }
}
