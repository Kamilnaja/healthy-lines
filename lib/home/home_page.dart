import 'package:flutter/material.dart';

import '../custom_drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  final isLoggedIn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Healthy lines'),
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                padding: const EdgeInsets.all(15),
                child: const Center(
                  child: Text("Healthy lines",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.black, fontSize: 30)),
                )),
            Column(
              children: [
                const SizedBox(height: 30),
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed('/blinking_timer');
                    },
                    child: const Text('Try blinking reminder')),
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed('/login', arguments: '');
                    },
                    child: const Text('Login screen')),
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context)
                          .pushNamed('/about_us', arguments: '');
                    },
                    child: const Text('About us'))
              ],
            ),
          ],
        ),
        drawer: const CustomDrawer());
  }
}
