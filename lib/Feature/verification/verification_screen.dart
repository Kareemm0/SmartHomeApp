import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:smart_home/core/utils/app_colors.dart';
import 'package:smart_home/core/utils/app_router.dart';
import 'package:smart_home/core/widget/app_button.dart';

class VerificationScreen extends StatelessWidget {
  const VerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            context.pop();
          },
          child: const Icon(
            Icons.arrow_back,
            color: AppColors.wihte,
          ),
        ),
        title: const Text(
          "Door Password",
          style: TextStyle(color: AppColors.wihte),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Enter Your Door Password",
                style: TextStyle(color: AppColors.authText),
              ),
              SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.02,
              ),
              PinCodeTextField(
                appContext: context,
                length: 6,
                // obscuringCharacter: '*',
                // obscuringWidget: const FlutterLogo(
                //   size: 24,
                // ),
                // blinkWhenObscuring: true,
                animationType: AnimationType.fade,
                // validator: (v) {
                //   if (v!.length < 3) {
                //     return "I'm from validator";
                //   } else {
                //     return null;
                //   }
                // },
                pinTheme: PinTheme(
                  shape: PinCodeFieldShape.box,
                  borderRadius: BorderRadius.circular(8),
                  fieldHeight: 50,
                  fieldWidth: 40,
                  activeFillColor: AppColors.authText,
                  activeColor: AppColors.wihte,
                  inactiveColor: AppColors.authText,
                  selectedColor: AppColors.wihte,
                ),
                cursorColor: AppColors.authText,
                animationDuration: const Duration(milliseconds: 300),
                enableActiveFill: true,
                // errorAnimationController: errorController,
                // controller: textEditingController,
                keyboardType: TextInputType.number,
                // onCompleted: (v) {
                //   debugPrint("Completed");
                // },
                // onTap: () {
                //   print("Pressed");
                // },
                // onChanged: (value) {
                //   debugPrint(value);
                //   setState(() {
                //     currentText = value;
                //   });
                // },
                // beforeTextPaste: (text) {
                //   debugPrint("Allowing to paste $text");
                //   return true;
                // },
              ),
              SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.02,
              ),
              CustomAppButton(
                width: MediaQuery.sizeOf(context).width * 0.8,
                borderRadius: BorderRadius.circular(25),
                text: "Continue",
                textColor: AppColors.wihte,
                fontWeight: FontWeight.bold,
                containerColor: AppColors.loginButton,
                onPressed: () {
                  context.push(AppRouter.login);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
