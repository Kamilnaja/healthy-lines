import 'package:flutter/material.dart';
import 'package:healthy_lines/router/router_generator.dart';

import 'homePage.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      onGenerateRoute: RouteGenerator.generateRoute,
      title: 'Healthy lines',
      theme: ThemeData(primarySwatch: Colors.amber),
      home: const HomePage(),
    );
  }
}
