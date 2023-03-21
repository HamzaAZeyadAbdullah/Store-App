import 'package:flutter/material.dart';

class CoustomTextField extends StatelessWidget {
  CoustomTextField(
      {this.hintText,
      this.inputType,
      this.onChanged,
      this.obscureText,
      super.key});

  Function(String)? onChanged;
  String? hintText;
  bool? obscureText;
  TextInputType? inputType;

  @override
  Widget build(BuildContext context) {
    return TextField(
      // obscureText: obscureText!,
      keyboardType: inputType,
      onChanged: onChanged,
      decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(),
            borderRadius: BorderRadius.circular(8),
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(),
            borderRadius: BorderRadius.circular(8),
          )),
    );
  }
}
