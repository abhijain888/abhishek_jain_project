import 'package:flutter/material.dart';
import 'package:sample_project/constants/color_constants.dart';

class MyTextWidget extends StatelessWidget {
  final String text;
  final TextStyle? style;
  final FontWeight? weight;
  final double? size;
  final Color? color;
  final double? lineHeight;
  final TextAlign? textAlign;
  final TextOverflow? overflow;

  const MyTextWidget({
    super.key,
    this.style,
    this.weight,
    this.size,
    required this.text,
    this.color = AppColors.grey900,
    this.lineHeight,
    this.overflow,
    this.textAlign,
  });

  const MyTextWidget.blueTitleText({
    this.style,
    this.weight = FontWeight.bold,
    this.size = 20,
    required this.text,
    super.key,
    this.color = AppColors.grey900,
    this.lineHeight,
    this.overflow,
    this.textAlign,
  });

  const MyTextWidget.blackTitleText({
    this.style,
    this.weight = FontWeight.bold,
    this.size = 20,
    required this.text,
    super.key,
    this.color = AppColors.grey900,
    this.lineHeight,
    this.overflow,
    this.textAlign,
  });

  const MyTextWidget.medTitleText({
    this.style,
    this.weight = FontWeight.bold,
    this.size = 14,
    required this.text,
    super.key,
    this.color = AppColors.grey900,
    this.lineHeight,
    this.overflow,
    this.textAlign,
  });

  const MyTextWidget.medText({
    this.style,
    this.weight = FontWeight.w500,
    this.size = 14,
    required this.text,
    super.key,
    this.color = AppColors.grey900,
    this.lineHeight = 1.6,
    this.overflow,
    this.textAlign,
  });

  const MyTextWidget.boldText({
    this.style,
    this.weight = FontWeight.bold,
    this.size = 14,
    required this.text,
    super.key,
    this.color = AppColors.grey900,
    this.lineHeight,
    this.overflow,
    this.textAlign,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: overflow,
      textAlign: textAlign,
      style: style ??
          TextStyle(
            fontSize: size,
            color: color,
            fontWeight: weight,
            height: lineHeight,
          ),
    );
  }
}
