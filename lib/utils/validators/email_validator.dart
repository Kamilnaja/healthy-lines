String? emailValidator(String? value) {
  return (value != null &&
          RegExp(r'^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+').hasMatch(value))
      ? null
      : 'Wrong email';
}
