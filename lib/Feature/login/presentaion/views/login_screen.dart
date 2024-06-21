import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:smart_home/Feature/login/presentaion/cubit/cubit/login_cubit.dart';
import 'package:smart_home/core/utils/app_colors.dart';
import 'package:smart_home/core/utils/app_images.dart';
import 'package:smart_home/core/utils/app_router.dart';
import 'package:smart_home/core/widget/app_button.dart';
import 'package:smart_home/core/widget/custom_auth_text.dart';
import 'package:smart_home/core/widget/custom_text_form_filed.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: BlocProvider(
          create: (context) => LoginCubit(),
          child: BlocBuilder<LoginCubit, LoginState>(
            builder: (context, state) {
              final cubit = context.read<LoginCubit>();
              return Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                child: Column(
                  children: [
                    Image.asset(AppImages.login),
                    SizedBox(
                      height: MediaQuery.sizeOf(context).height * 0.01,
                    ),
                    const Text(
                      "Login ",
                      style: TextStyle(
                        color: AppColors.wihte,
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.sizeOf(context).height * 0.1,
                    ),
                    CustomTextFormFiled(
                      hintText: "Email",
                      controller: cubit.emailController,
                    ),
                    SizedBox(
                      height: MediaQuery.sizeOf(context).height * 0.03,
                    ),
                    CustomTextFormFiled(
                      hintText: "Password",
                      controller: cubit.passwordController,
                    ),
                    SizedBox(
                      height: MediaQuery.sizeOf(context).height * 0.03,
                    ),
                    const Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        "Forget Password ?",
                        style: TextStyle(color: AppColors.authText),
                      ),
                    ),
                    const Spacer(),
                    CustomAppButton(
                      width: MediaQuery.sizeOf(context).width * 0.7,
                      borderRadius: BorderRadius.circular(25),
                      text: "OK",
                      textColor: AppColors.wihte,
                      fontWeight: FontWeight.bold,
                      containerColor: AppColors.loginButton,
                      onPressed: () {
                        context.push(AppRouter.main);
                      },
                    ),
                    SizedBox(
                      height: MediaQuery.sizeOf(context).height * 0.1,
                    ),
                    CustomAuthText(
                        onPressed: () {
                          context.push(AppRouter.register);
                        },
                        textAccount: "Don't Have an Account ?",
                        textAuth: "Sign Up")
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
