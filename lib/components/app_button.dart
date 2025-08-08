import 'package:bmi_calculator/components/app_text_style.dart';
import 'package:bmi_calculator/constants/app_colors_path.dart';
import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final VoidCallback onTap;
  final String content;
  final bool isWhite;

  const AppButton({
    super.key,
    required this.onTap,
    required this.content,
    this.isWhite = true,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(63),
          color: isWhite ? AppColorsPath.lightWhite : AppColorsPath.purple,
        ),
        width: size.width - 30 * 2,
        padding: EdgeInsets.symmetric(vertical: 27),
        alignment: Alignment.center,
        child: Text(
          content,
          style:
              isWhite
                  ? AppTextStyle.text17darkBlueMedium
                  : AppTextStyle.text17darkBlueMedium.copyWith(
                    color: AppColorsPath.lightWhite,
                  ),
        ),
      ),
    );
  }
}
