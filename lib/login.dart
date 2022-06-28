import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  final String data;

  const Login({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Set 15 min timer')),
        body: Center(
            child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
          const Text(
            'Welcome in login page',
            style: TextStyle(fontSize: 30),
          ),
          Text(data, style: const TextStyle(fontSize: 20)),
        ])));
  }
}
