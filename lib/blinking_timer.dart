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
  final int _initialTimer = 15;
  int _currentTime = 15;
  bool _isRunning = false;

  void startTimer() {
    if (_isRunning) return;
    _isRunning = true;
    timer = Timer.periodic(
        const Duration(seconds: 1), (Timer timer) => decrementCount());
  }

  void decrementCount() {
    if (!mounted) return;
    if (_currentTime <= 0) {
      _showDialog(context);
      return resetTimerOnTimeEnd();
    }
    setState(() => _currentTime--);
  }

  void resetTimerOnTimeEnd() {
    _isRunning = false;
    timer?.cancel();
    _currentTime = _initialTimer;
    setState(() => _currentTime = _initialTimer);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Prevent eye strains')),
        body: Center(
            child: Column(mainAxisSize: MainAxisSize.min, children: [
          Text(
            formatTime(_currentTime),
            style: const TextStyle(fontSize: 50),
          ),
          OutlinedButton(
              style: ElevatedButton.styleFrom(
                  primary: Colors.lightBlueAccent, onPrimary: Colors.white),
              onPressed: () => {startTimer()},
              child: Text(_isRunning ? 'Running' : 'Start session'))
        ])));
  }

  void _showDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Alert!!"),
          content:
              const Text("Please stare at the distant object for a moment"),
          actions: <Widget>[
            ElevatedButton(
              onPressed: () => Navigator.of(context).pop(false),
              child: const Text("OK"),
            ),
          ],
        );
      },
    );
  }
}
