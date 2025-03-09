import 'package:flutter/material.dart';

class PasswordTextField extends StatefulWidget {
  const PasswordTextField({
    super.key,
    this.hint = "Password",
    this.onChange,
    this.validator,
  });

  final String hint;
  final Function(String value)? onChange;
  final String? Function(String? value)? validator;

  @override
  State<PasswordTextField> createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  bool isPasswordHidden = true;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: isPasswordHidden,
      onChanged: widget.onChange,
      validator: widget.validator,
      decoration: InputDecoration(
        label: Text(widget.hint),
        border: const OutlineInputBorder(),
        suffix: InkWell(
          child: Icon(isPasswordHidden
              ? Icons.visibility_off
              : Icons.visibility_rounded),
          onTap: () => setState(() => isPasswordHidden = !isPasswordHidden),
        ),
      ),
    );
  }
}
