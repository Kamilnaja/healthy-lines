import 'package:flutter/material.dart';

import 'BlinkingTimer.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Startup Name Generator',
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
          title: const Text('Healthy lines'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                padding: const EdgeInsets.all(15),
                child: const Text(
                    "Welcome in healthy lines. This is an awesome app that will help you achieving your health goals",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        backgroundColor: Colors.lightBlueAccent))),
            Column(
              children: [
                const SizedBox(height: 30),
                ElevatedButton(onPressed: () {}, child: const Text('Login')),
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const BlinkingTimer(
                                data: 'Hello from the first page',
                                key: null,
                              )));
                    },
                    child: const Text('Go to blinking screen')),
              ],
            ),
          ],
        ));
  }
}
