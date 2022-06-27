import 'package:flutter/material.dart';

class BlinkingTimer extends StatelessWidget {
  final String data;

  const BlinkingTimer({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Set 15 min timer')),
        body: Center(
            child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
          const Text(
            'Second Page',
            style: TextStyle(fontSize: 50),
          ),
          Text(data, style: const TextStyle(fontSize: 20)),
        ])));
  }
}
