import 'package:flutter/material.dart';
import 'package:smart_home/core/app_images.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(AppImages.onBoarding),
        ],
      ),
    );
  }
}
