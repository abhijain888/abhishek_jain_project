import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sample_project/common_widgets/my_text_widget.dart';
import 'package:sample_project/common_widgets/primary_button.dart';
import 'package:sample_project/constants/app_sizes.dart';
import 'package:sample_project/constants/color_constants.dart';
import 'package:sample_project/constants/image_assets.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String code = "91";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: Sizes.p20),
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              gapH20,
              const MyTextWidget.blackTitleText(text: "Log in"),
              gapH20,
              placeholderImg,
              gapH24,
              Container(
                decoration: BoxDecoration(
                  color: AppColors.grey100,
                  border: Border.all(color: AppColors.grey300),
                  borderRadius:
                      const BorderRadius.all(Radius.circular(Sizes.p32)),
                ),
                child: Row(
                  children: [
                    TextButton(
                      onPressed: () {
                        showCountryPicker(
                          context: context,
                          showPhoneCode:
                              true, // optional. Shows phone code before the country name.
                          onSelect: (Country country) {
                            print('Select country: ${country.phoneCode}');
                            setState(() {
                              code = country.phoneCode;
                            });
                          },
                        );
                      },
                      child: Row(
                        children: [
                          MyTextWidget(text: "+$code "),
                          const Icon(Icons.arrow_drop_down_rounded)
                        ],
                      ),
                    ),
                    const Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          enabledBorder: InputBorder.none,
                          border: InputBorder.none,
                        ),
                        cursorColor: AppColors.grey900,
                      ),
                    ),
                  ],
                ),
              ),
              gapH20,
              PrimaryButton(
                text: "Get OTP",
                onPressed: () => context.go('/otp'),
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
