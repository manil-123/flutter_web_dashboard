import 'package:flutter/material.dart';

class LoginTextFormField extends StatelessWidget {
  final TextEditingController? controller;
  final String? hint;
  final bool? isPassword;
  const LoginTextFormField(
      {super.key, this.controller, this.hint, this.isPassword});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: isPassword ?? false,
      decoration: InputDecoration(
        fillColor: Colors.white,
        filled: true,
        hintText: hint,
        contentPadding: EdgeInsets.symmetric(horizontal: 24, vertical: 4),
        hintStyle: TextStyle(color: Colors.grey.withOpacity(0.8), fontSize: 14),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: Colors.white),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: Colors.white),
        ),
      ),
    );
  }
}
