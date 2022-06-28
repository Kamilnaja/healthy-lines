import 'package:flutter/material.dart';

import '../blinkingTimer.dart';
import '../homePage.dart';
import '../login.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // Getting arguments passed in while calling Navigator.pushNamed
    final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const HomePage());
      case '/blinking_timer':
        // Validation of correct data type
        return MaterialPageRoute(
          builder: (_) => const BlinkingTimer(),
        );
      case '/login':
        if (args is String) {
          return MaterialPageRoute(builder: (_) => Login(data: args));
        }
        // If args is not of the correct type, return an error page.
        // You can also throw an exception while in development.
        return _errorRoute();
      default:
        // If there is no such named route in the switch statement, e.g. /third
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Error'),
        ),
        body: const Center(
          child: Text('ERROR'),
        ),
      );
    });
  }
}
