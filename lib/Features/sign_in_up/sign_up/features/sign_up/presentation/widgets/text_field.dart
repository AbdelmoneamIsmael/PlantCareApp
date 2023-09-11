import 'package:flutter/material.dart';

class MySignUpTFF extends StatelessWidget {
  const MySignUpTFF(
      {this.security = false,
      required this.controller,
      required this.hintText,
      required this.icon,
      required this.validation,
      super.key});
  final String hintText;
  final String? Function(String?)? validation;
  final Icon icon;
  final bool security;
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 24.0),
        child: TextFormField(
          controller: controller,
          obscureText: false,
          validator: validation,
          decoration: InputDecoration(
            hintText: hintText,
            filled: true,
            fillColor: Colors.white,
            prefixIcon: icon,
            enabledBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
          ),
        ));
  }
}
