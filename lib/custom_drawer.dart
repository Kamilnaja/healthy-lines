import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {

  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(padding: const EdgeInsets.all(0), children: const [
          SizedBox(height: 40),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("Lorem"),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("Ipsum"),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("Dolor"),
          )
        ]));
  }
}