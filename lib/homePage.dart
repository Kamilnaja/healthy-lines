import 'package:flutter/material.dart';

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
                    "Welcome in healthy lines. This is an awesome app that will help you achieving your health goals",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        backgroundColor: Colors.lightBlueAccent))),
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
        ));
  }
}
