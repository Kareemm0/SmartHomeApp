import 'package:flutter/material.dart';
import 'package:smart_home/core/function/border_raduis.dart';
import 'package:smart_home/core/utils/app_colors.dart';

class CustomTextFormFiled extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final String? Function(String?)? validator;
  const CustomTextFormFiled(
      {super.key,
      required this.hintText,
      required this.controller,
      this.validator});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        errorBorder: outLineInputBorder(),
        enabledBorder: outLineInputBorder(),
        focusedBorder: outLineInputBorder(),
        fillColor: AppColors.borderColor,
        filled: true,
        hintText: hintText,
        hintStyle: const TextStyle(
          color: AppColors.wihte,
        ),
      ),
      controller: controller,
      validator: validator,
    );
  }
}
