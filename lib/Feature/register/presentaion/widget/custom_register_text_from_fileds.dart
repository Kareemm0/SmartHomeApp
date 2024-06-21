import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_home/Feature/register/presentaion/cubit/cubit/register_cubit.dart';

import '../../../../core/widget/custom_text_form_filed.dart';

class CustomRegisterTextFromFileds extends StatelessWidget {
  const CustomRegisterTextFromFileds({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegisterCubit, RegisterState>(
      builder: (context, state) {
        final cubit = context.read<RegisterCubit>();
        return Column(
          children: [
            Row(
              children: [
                Flexible(
                  child: CustomTextFormFiled(
                    controller: cubit.firstNameController,
                    hintText: "First Name",
                    validator: (val) {
                      return null;
                    },
                  ),
                ),
                SizedBox(
                  width: MediaQuery.sizeOf(context).width * 0.02,
                ),
                Flexible(
                  child: CustomTextFormFiled(
                    controller: cubit.lastNameController,
                    hintText: "Last Name",
                    validator: (val) {
                      return null;
                    },
                  ),
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.sizeOf(context).height * 0.02,
            ),
            CustomTextFormFiled(
              hintText: "Email ",
              controller: cubit.emailController,
            ),
            SizedBox(
              height: MediaQuery.sizeOf(context).height * 0.02,
            ),
            CustomTextFormFiled(
              hintText: "Password",
              controller: cubit.emailController,
            ),
            SizedBox(
              height: MediaQuery.sizeOf(context).height * 0.02,
            ),
            CustomTextFormFiled(
              hintText: "Confirm Password ",
              controller: cubit.emailController,
            ),
          ],
        );
      },
    );
  }
}
