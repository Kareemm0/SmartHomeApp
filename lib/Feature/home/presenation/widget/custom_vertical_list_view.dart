import 'package:flutter/material.dart';

import '../../../../core/utils/app_colors.dart';

class CustomVerticalListView extends StatelessWidget {
  const CustomVerticalListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.loginButton,
        borderRadius: BorderRadius.circular(25),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Pir\nSensor",
                style: TextStyle(
                  color: AppColors.wihte,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Living Room",
                style: TextStyle(
                  color: AppColors.authText,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          Switch(
            value: true,
            onChanged: (val) {},
            activeTrackColor: AppColors.authText,
          )
        ],
      ),
    );
  }
}
