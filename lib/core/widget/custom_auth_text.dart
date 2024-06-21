import 'package:flutter/material.dart';

import '../utils/app_colors.dart';

class CustomAuthText extends StatelessWidget {
  final String textAccount;
  final String textAuth;
  final void Function()? onPressed;
  const CustomAuthText(
      {super.key,
      required this.textAccount,
      required this.textAuth,
      this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          textAccount,
          style: const TextStyle(
            color: AppColors.authText,
            fontSize: 14,
          ),
        ),
        TextButton(
            onPressed: onPressed,
            child: Text(
              textAuth,
              style: const TextStyle(
                color: AppColors.auth,
                fontSize: 16,
              ),
            ))
      ],
    );
  }
}
