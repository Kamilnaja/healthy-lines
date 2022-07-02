import 'dart:async';

import 'package:flutter/material.dart';
import './utils/format_time.dart';

class BlinkingTimer extends StatefulWidget {
  const BlinkingTimer({Key? key}) : super(key: key);

  @override
  State<BlinkingTimer> createState() => _BlinkingTimerState();
}

class _BlinkingTimerState extends State<BlinkingTimer> {
  Timer? timer;
  var _isRunning = false;
  int _maxCount = 15 * 60;

  void decrementCount() {
    if (!mounted) return;
    setState(() {
      _maxCount--;
    });
  }

  void startTimer() {
    if (!_isRunning) {
      _isRunning = true;
      timer = Timer.periodic(
          const Duration(seconds: 1), (Timer timer) => decrementCount());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Prevent eye strains')),
        body: Center(
            child: Column(mainAxisSize: MainAxisSize.min, children: [
          Text(
            formatTime(_maxCount),
            style: const TextStyle(fontSize: 50),
          ),
          OutlinedButton(
              style: ElevatedButton.styleFrom(
                  primary: Colors.lightBlueAccent, onPrimary: Colors.white),
              onPressed: () => {startTimer()},
              child: const Text('Start session'))
        ])));
  }
}