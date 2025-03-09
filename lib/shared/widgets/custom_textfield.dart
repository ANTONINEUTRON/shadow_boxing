import 'package:flutter/material.dart';

class CustomTextfield extends StatelessWidget {
  const CustomTextfield({
    super.key,
    required this.hint,
    this.onChange,
    this.validator,
    this.initialValue,
    this.isEnabled,
  });
  final String hint;
  final Function(String value)? onChange;
  final String? Function(String? value)? validator;
  final String? initialValue;
  final bool? isEnabled;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      enabled: isEnabled,
      initialValue: initialValue,
      decoration: InputDecoration(
        label: Text(hint),
        border: OutlineInputBorder(),
      ),
      onChanged: onChange,
      
    );
  }
}
