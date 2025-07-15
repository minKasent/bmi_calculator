import 'package:bmi_calculator/components/app_button.dart';
import 'package:bmi_calculator/components/app_text.dart';
import 'package:bmi_calculator/components/app_text_style.dart';
import 'package:bmi_calculator/constants/app_colors_path.dart';
import 'package:bmi_calculator/constants/app_icons_path.dart';
import 'package:bmi_calculator/screens/widgets/age_weight_info_widget.dart';
import 'package:flutter/material.dart';

class BmiCalculatorScreen extends StatelessWidget {
  const BmiCalculatorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColorsPath.lightWhite,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            SizedBox(height: 54),
            AppText(
              content: "BMI Calculator",
              style: AppTextStyle.text17darkBlueRegular,
            ),
            SizedBox(height: 39),
            Row(
              children: [
                AgeWeightInfoWidget(
                  onMinusTap: () {},
                  onPlusTap: () {},
                  number: 30,
                ),
                SizedBox(width: 21),
                AgeWeightInfoWidget(
                  onMinusTap: () {},
                  onPlusTap: () {},
                  number: 70,
                ),
              ],
            ),
            AppButton(
              onTap: () {
                Navigator.pop(context);
              },
              content: "Back",
              isWhite: false,
            ),
          ],
        ),
      ),
    );
  }
}
