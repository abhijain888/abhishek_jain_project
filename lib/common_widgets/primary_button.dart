// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import '../constants/app_sizes.dart';
import '../constants/color_constants.dart';
import 'my_text_widget.dart';

/// Primary button based on [ElevatedButton]. Useful for CTAs in the app.
class PrimaryButton extends StatelessWidget {
  /// Create a PrimaryButton.
  /// if [isLoading] is true, a loading indicator will be displayed instead of
  /// the text.
  const PrimaryButton({
    super.key,
    this.margin,
    required this.text,
    this.isLoading = false,
    this.onPressed,
    this.width = double.infinity,
    this.backgroundColor = AppColors.priPNK900,
    this.foregroundColor = AppColors.grey100,
  });
  final EdgeInsetsGeometry? margin;
  final String text;
  final bool isLoading;
  final VoidCallback? onPressed;
  final double? width;
  final Color? backgroundColor;
  final Color? foregroundColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      height: Sizes.p45,
      width: width,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          foregroundColor: foregroundColor,
        ),
        child: isLoading
            ? const CircularProgressIndicator()
            : MyTextWidget(
                text: text,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: Colors.white,
                ),
              ),
      ),
    );
  }
}
