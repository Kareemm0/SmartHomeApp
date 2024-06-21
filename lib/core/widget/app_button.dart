import 'package:flutter/material.dart';

import '../utils/app_colors.dart';

class CustomAppButton extends StatelessWidget {
  final Color? containerColor;
  final void Function()? onPressed;
  final String? text;
  final Color? textColor;
  final double? fontSize;
  final FontWeight? fontWeight;
  const CustomAppButton(
      {super.key,
      this.containerColor,
      this.onPressed,
      this.text,
      this.textColor,
      this.fontSize,
      this.fontWeight});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * .4,
      decoration: BoxDecoration(
        color: containerColor ?? AppColors.wihte,
        borderRadius: BorderRadius.circular(8),
      ),
      child: MaterialButton(
        onPressed: onPressed,
        child: Text(
          text ?? "start",
          style: TextStyle(
            color: textColor ?? AppColors.ktextColor,
            fontSize: fontSize ?? 20,
            fontWeight: fontWeight ?? FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
