import 'package:flutter/material.dart';

import '../utils/validators/has_value.dart';

class CustomForm extends StatefulWidget {
  const CustomForm({Key? key}) : super(key: key);

  @override
  State<CustomForm> createState() => _CustomFormState();
}

class _CustomFormState extends State<CustomForm> {
  final _formKey = GlobalKey<FormState>();
  final textEditingController = TextEditingController();
  final usernameController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is removed from the
    // widget tree.
    textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    String? email = '';
    String? password = '';
    String? repeatedPassword = '';

    return Padding(
        padding: const EdgeInsets.fromLTRB(15.0, 0, 15.0, 0),
        child: Form(
            key: _formKey,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            child: Column(children: <Widget>[
              TextFormField(
                  controller: usernameController,
                  decoration: const InputDecoration(
                      icon: Icon(Icons.account_circle),
                      border: UnderlineInputBorder(),
                      labelText: 'Username'),
                  autofocus: true,
                  validator: (value) {
                    return hasValue(value);
                  }),
              TextFormField(
                  onSaved: (value) {
                    email = value;
                  },
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                      icon: Icon(Icons.alternate_email),
                      border: UnderlineInputBorder(),
                      labelText: 'Email'),
                  validator: (value) {
                    return hasValue(value);
                  }),
              TextFormField(
                onSaved: (value) {
                  password = value;
                },
                obscureText: true,
                controller: textEditingController,
                decoration: const InputDecoration(
                    icon: Icon(Icons.password), labelText: 'Password'),
              ),
              TextFormField(
                  onSaved: (value) {
                    repeatedPassword = value;
                  },
                  obscureText: true,
                  controller: textEditingController,
                  decoration: const InputDecoration(
                      icon: Icon(Icons.password),
                      labelText: 'Repeat Password')),
              ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Saving data')));
                      _formKey.currentState?.save();
                      print({
                        password,
                        repeatedPassword,
                        email,
                        usernameController.text
                      });
                    }
                  },
                  child: const Text('Submit'))
            ])));
  }
}
