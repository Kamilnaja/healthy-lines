import 'package:flutter/material.dart';

class BlinkingTimer extends StatefulWidget {
  const BlinkingTimer({Key? key}) : super(key: key);

  @override
  State<BlinkingTimer> createState() => _BlikingTimerState();
}

class _BlikingTimerState extends State<BlinkingTimer> {
  int _count = 0;

  void incrementCount() {
    setState(() {
      _count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Prevent eye strains')),
        body: Center(
            child: Column(mainAxisSize: MainAxisSize.min, children: [
          Text(
            _count.toString(),
            style: const TextStyle(fontSize: 50),
          ),
          OutlinedButton(
              style: ElevatedButton.styleFrom(
                  primary: Colors.lightBlueAccent, onPrimary: Colors.white),
              onPressed: () => {incrementCount()},
              child: const Text('Start session'))
        ])));
  }
}
