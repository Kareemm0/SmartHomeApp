import 'package:flutter/material.dart';

import '../../core/utils/app_colors.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("ProfileScreen", style: TextStyle(color: AppColors.wihte)),
      ),
    );
  }
}
