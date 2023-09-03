import 'package:flutter/material.dart';
import 'package:plant_care/core/colors/app_colors.dart';

class MyTextForm extends StatelessWidget {
  final String hintText;
  final TextEditingController textEditingController;
  final bool secure;
  final TextInputType inputType;
  final String? Function(String?)? validator;

  const MyTextForm({
    required this.hintText,
    required this.textEditingController,
    this.secure = false,
    this.inputType = TextInputType.text,
    this.validator,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: false,
      validator: validator,
      controller: textEditingController,
      style: Theme.of(context)
          .textTheme
          .bodySmall!
          .copyWith(color: Colors.white, fontSize: 20),
      keyboardType: inputType,
      decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(
                color: AppColors.btnColor,
                width: 3,
              )),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(
                color: AppColors.btnColor,
                width: 3,
              )),
          errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: const BorderSide(
                color: Colors.red,
                width: 3,
              )),
          hintText: hintText,
          hintStyle: const TextStyle(color: Colors.white)),
    );
  }
}
