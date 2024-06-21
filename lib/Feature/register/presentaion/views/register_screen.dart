import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smart_home/Feature/register/presentaion/widget/custom_svg.dart';
import 'package:smart_home/core/utils/app_colors.dart';
import 'package:smart_home/core/utils/app_images.dart';
import 'package:smart_home/core/widget/app_button.dart';
import 'package:smart_home/core/widget/custom_auth_text.dart';

import '../cubit/cubit/register_cubit.dart';
import '../widget/custom_register_text_from_fileds.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RegisterCubit(),
      child: BlocBuilder<RegisterCubit, RegisterState>(
        builder: (context, state) {
          //!  final cubit = context.read<RegisterCubit>();
          return SafeArea(
            child: Scaffold(
              body: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(AppImages.login),
                    SizedBox(
                      height: MediaQuery.sizeOf(context).height * 0.01,
                    ),
                    const CustomRegisterTextFromFileds(),
                    SizedBox(
                      height: MediaQuery.sizeOf(context).height * 0.02,
                    ),
                    const Text(
                      "Or sign up with ",
                      style: TextStyle(
                          color: AppColors.wihte,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: MediaQuery.sizeOf(context).height * 0.015,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomSvgPicture(
                            child: SvgPicture.asset(
                          AppImages.facebook,
                          height: MediaQuery.sizeOf(context).height * 0.04,
                        )),
                        SizedBox(
                          width: MediaQuery.sizeOf(context).width * 0.1,
                        ),
                        CustomSvgPicture(
                            child: SvgPicture.asset(
                          AppImages.apple,
                          height: MediaQuery.sizeOf(context).height * 0.04,
                        )),
                        SizedBox(
                          width: MediaQuery.sizeOf(context).width * 0.1,
                        ),
                        CustomSvgPicture(
                            child: SvgPicture.asset(
                          AppImages.google,
                          height: MediaQuery.sizeOf(context).height * 0.04,
                        ))
                      ],
                    ),
                    const Spacer(),
                    CustomAppButton(
                      width: MediaQuery.sizeOf(context).width * 0.7,
                      borderRadius: BorderRadius.circular(25),
                      text: "Sign Up ",
                      textColor: AppColors.wihte,
                      fontWeight: FontWeight.bold,
                      containerColor: AppColors.loginButton,
                      onPressed: () {},
                    ),
                    SizedBox(
                      height: MediaQuery.sizeOf(context).height * 0.015,
                    ),
                    const CustomAuthText(
                        textAccount: "Already have an account?",
                        textAuth: "Sign in"),
                    SizedBox(
                      height: MediaQuery.sizeOf(context).height * 0.1,
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
