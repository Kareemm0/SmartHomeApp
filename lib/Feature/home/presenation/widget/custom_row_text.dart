import 'package:flutter/material.dart';

import '../../../../core/utils/app_colors.dart';

class CustomRowText extends StatelessWidget {
  final String text;
  const CustomRowText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: const TextStyle(
            color: AppColors.wihte,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        const Text(
          "see All",
          style: TextStyle(
            color: AppColors.authText,
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        )
      ],
    );
  }
}
