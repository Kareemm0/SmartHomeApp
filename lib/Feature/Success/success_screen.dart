import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:smart_home/core/utils/app_images.dart';
import 'package:smart_home/core/utils/app_router.dart';

import '../../core/utils/app_colors.dart';
import '../../core/widget/app_button.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        child: Center(
          child: Column(
            children: [
              SvgPicture.asset(AppImages.success),
              SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.03,
              ),
              const Text(
                "SUCCESS! ",
                style: TextStyle(
                  color: AppColors.wihte,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.03,
              ),
              const Text(
                "Congratulation! You have been \n successfully signed up ",
                textAlign: TextAlign.center,
                style: TextStyle(color: AppColors.authText),
              ),
              const Spacer(),
              CustomAppButton(
                width: MediaQuery.sizeOf(context).width * 0.7,
                borderRadius: BorderRadius.circular(25),
                text: "Next",
                textColor: AppColors.wihte,
                fontWeight: FontWeight.bold,
                containerColor: AppColors.loginButton,
                onPressed: () {
                  context.push(AppRouter.verifiy);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
