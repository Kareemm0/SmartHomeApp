import 'package:flutter/material.dart';
import 'package:smart_home/core/utils/app_colors.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          "SettingScreen",
          style: TextStyle(color: AppColors.wihte),
        ),
      ),
    );
  }
}
