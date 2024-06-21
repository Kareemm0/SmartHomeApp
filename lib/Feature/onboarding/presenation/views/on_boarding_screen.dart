import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:smart_home/core/utils/app_images.dart';

import '../../../../core/utils/app_router.dart';
import '../../../../core/widget/app_button.dart';
import '../widgets/custom_animated_text.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: MediaQuery.sizeOf(context).height,
            child: Image.asset(
              AppImages.onBoarding,
              fit: BoxFit.fill,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomAnimatedText(),
              const Spacer(),
              Center(
                child: CustomAppButton(
                  onPressed: () {
                    context.push(AppRouter.register);
                  },
                ),
              ),
              const SizedBox(height: 50),
            ],
          ),
        ],
      ),
    );
  }
}
