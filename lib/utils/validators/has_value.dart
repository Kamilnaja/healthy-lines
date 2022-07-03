String? hasValue(String? value) {
  return (value == null || value.isEmpty) ? 'Please enter some text' : null;
}
