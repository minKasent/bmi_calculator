import 'package:bmi_calculator/components/app_text.dart';
import 'package:bmi_calculator/components/app_text_style.dart';
import 'package:bmi_calculator/constants/app_colors_path.dart';
import 'package:bmi_calculator/constants/app_icons_path.dart';
import 'package:flutter/material.dart';

class AgeWeightInfoWidget extends StatelessWidget {
  final bool isAgeComponent;
  final int number;
  final VoidCallback onMinusTap;
  final VoidCallback onPlusTap;

  const AgeWeightInfoWidget({
    this.isAgeComponent = true,
    required this.number,
    required this.onMinusTap,
    required this.onPlusTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: (size.width - 30 * 2 - 21) / 2,
      decoration: BoxDecoration(
        color: AppColorsPath.white,
        borderRadius: BorderRadius.circular(12),
      ),
      padding: EdgeInsets.fromLTRB(28, 27, 28, 14),
      child: Column(
        children: [
          AppText(
            content: isAgeComponent ? "Age" : "Weight (KG)",
            style: AppTextStyle.text17darkBlueRegular.copyWith(
              color: AppColorsPath.darkPurple,
            ),
          ),
          AppText(
            content: number.toString(),
            style: AppTextStyle.text57darkBlueBold,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: onMinusTap,
                child: Image.asset(AppIconsPath.icMinus),
              ),
              InkWell(
                onTap: onPlusTap,
                child: Image.asset(AppIconsPath.icPlus),
              ),
            ],
          ),

        ],

      ),
    );
  }
}