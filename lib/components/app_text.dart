import 'package:bmi_calculator/components/app_text_style.dart';
import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  final String content;
  final TextStyle? style;
  const AppText({required this.content, this.style, super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      content,
      style: style ?? AppTextStyle.text25WhiteBold,
      textAlign: TextAlign.start,
    );
  }
}
