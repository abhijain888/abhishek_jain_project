import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:sample_project/common_widgets/primary_button.dart';
import 'package:sample_project/constants/color_constants.dart';

import '../common_widgets/my_text_widget.dart';
import '../constants/app_sizes.dart';
import '../constants/image_assets.dart';

class OTPScreen extends StatelessWidget {
  OTPScreen({super.key});

  final defaultPinTheme = PinTheme(
    width: 56,
    height: 56,
    textStyle: const TextStyle(
        fontSize: 20,
        color: Color.fromRGBO(30, 60, 87, 1),
        fontWeight: FontWeight.w600),
    decoration: BoxDecoration(
      border: Border.all(color: const Color.fromRGBO(234, 239, 243, 1)),
      borderRadius: BorderRadius.circular(20),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: Sizes.p20),
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          child: Column(
            children: [
              gapH20,
              const MyTextWidget.blackTitleText(text: "OTP Verify"),
              gapH20,
              placeholderImg,
              gapH24,
              const MyTextWidget.medText(
                text: "OTP Sent to",
                color: AppColors.grey500,
              ),
              const MyTextWidget.boldText(text: "+91 8239247483"),
              gapH20,
              Pinput(
                defaultPinTheme: defaultPinTheme,
              ),
              gapH20,
              PrimaryButton(
                text: "Verify OTP",
                onPressed: () => print("Verify OTP"),
              ),
              gapH20,
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: Sizes.p45),
                child: MyTextWidget(
                  text:
                      "By signing up, you agree with our terms and conditions",
                  color: AppColors.grey500,
                  size: 12,
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
