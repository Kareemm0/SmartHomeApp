import 'package:flutter/material.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_images.dart';

class CustomHerizontalListViewBody extends StatelessWidget {
  const CustomHerizontalListViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
          color: AppColors.balck, borderRadius: BorderRadius.circular(16)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            AppImages.home,
            fit: BoxFit.fill,
          ),
          const Text(
            "Living Room ",
            style: TextStyle(color: AppColors.wihte),
          ),
          const Text(
            "3 Devices",
            style: TextStyle(color: AppColors.wihte),
          ),
        ],
      ),
    );
  }
}
