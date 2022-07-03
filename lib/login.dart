import 'package:flutter/material.dart';
import './utils/validators/validate_is_empty.dart';

class CustomForm extends StatefulWidget {
  const CustomForm({Key? key}) : super(key: key);

  @override
  State<CustomForm> createState() => _CustomFormState();
}

class _CustomFormState extends State<CustomForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15.0, 0, 15.0, 0),
      child: Form(
          key: _formKey,
          child: Column(children: <Widget>[
            createFormField('Username'),
            createFormField('Email'),
            createFormField('Password'),
            createFormField('Repeat Password'),
            ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Processing data')));
                  }
                },
                child: const Text('Submit'))
          ]))
    );
  }


  Widget createFormField (String name) {
    return TextFormField(
        decoration: InputDecoration(
            border: const UnderlineInputBorder(), labelText: name),
        validator: (value) {
          return validateIsEmpty(value);
        });
  }
}

class Login extends StatelessWidget {
  final String data;

  const Login({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Login')),
        body: const CustomForm());
  }
}
