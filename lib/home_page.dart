import 'package:flutter/material.dart';

import 'custom_drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

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
                    "Welcome in healthy lines. We will help you achieving your health goals",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.lightGreen,
                      fontSize: 40,
                    ))),
            Column(
              children: [
                const SizedBox(height: 30),
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed('/login',
                          arguments: 'Hello from the first page');
                    },
                    child: const Text('Login screen')),
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed('/blinking_timer');
                    },
                    child: const Text('Go to blinking screen')),
              ],
            ),
          ],
        ),
        drawer: const CustomDrawer());
  }
}
