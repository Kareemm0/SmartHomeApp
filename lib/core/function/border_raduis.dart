import 'package:flutter/material.dart';
import 'package:smart_home/core/utils/app_colors.dart';

InputBorder outLineInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(12),
    borderSide: const BorderSide(
      color: AppColors.borderColor,
    ),
  );
}
