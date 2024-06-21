import 'package:flutter/material.dart';

import '../../../../core/utils/app_colors.dart';

class CustomSvgPicture extends StatelessWidget {
  final Widget child;
  const CustomSvgPicture({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(8),
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          color: AppColors.wihte,
          borderRadius: BorderRadius.circular(8),
        ),
        child: child);
  }
}
