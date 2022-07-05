import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('About us'),
          centerTitle: true,
        ),
        body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
              padding: const EdgeInsets.all(15),
              child: const Center(
                  child: Text(
                      "Hello there, this page is about creators of Healthy lines. We are Lukasz, Ewelina and Kamil")))
        ]));
  }
}
