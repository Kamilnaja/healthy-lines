import 'package:flutter/material.dart';

import '../utils/validators/validate_is_empty.dart';

class CustomForm extends StatefulWidget {
  const CustomForm({Key? key}) : super(key: key);

  @override
  State<CustomForm> createState() => _CustomFormState();
}

class _CustomFormState extends State<CustomForm> {
  final _formKey = GlobalKey<FormState>();
  final textEditingController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is removed from the
    // widget tree.
    textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(15.0, 0, 15.0, 0),
        child: Form(
            key: _formKey,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            child: Column(children: <Widget>[
              TextFormField(
                  decoration: const InputDecoration(
                      icon: Icon(Icons.account_circle),
                      border: UnderlineInputBorder(),
                      labelText: 'Username'),
                  validator: (value) {
                    return validateIsEmpty(value);
                  }),
              TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                      icon: Icon(Icons.alternate_email),
                      border: UnderlineInputBorder(),
                      labelText: 'Email'),
                  validator: (value) {
                    return validateIsEmpty(value);
                  }),
              TextFormField(
                obscureText: true,
                controller: textEditingController,
                decoration: const InputDecoration(
                    icon: Icon(Icons.password), labelText: 'Password'),
              ),
              TextFormField(
                  obscureText: true,
                  controller: textEditingController,
                  decoration: const InputDecoration(
                      icon: Icon(Icons.password),
                      labelText: 'Repeat Password')),
              ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text(_formKey.toString())));
                    }
                  },
                  child: const Text('Submit'))
            ])));
  }
}
