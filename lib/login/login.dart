import 'package:flutter/material.dart';

import 'custom_form.dart';

class Login extends StatelessWidget {
  final String data;

  const Login({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Login')), body: const CustomForm());
  }
}
