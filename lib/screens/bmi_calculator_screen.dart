import 'package:bmi_calculator/components/app_button.dart';
import 'package:bmi_calculator/components/app_text.dart';
import 'package:bmi_calculator/components/app_text_style.dart';
import 'package:bmi_calculator/constants/app_colors_path.dart';
import 'package:bmi_calculator/constants/app_icons_path.dart';
import 'package:bmi_calculator/screens/bmi_result_screen.dart';
import 'package:bmi_calculator/screens/widgets/age_weight_info_widget.dart';
import 'package:flutter/material.dart';

class BmiCalculatorScreen extends StatelessWidget {
  const BmiCalculatorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    int age = 30;
    int weight = 70;
    int height = 175;
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
                  isAgeComponent: true,
                  onMinusTap: () {
                    //  age --;
                  },
                  onPlusTap: () {
                    // age ++ ;
                  },
                  number: age,
                ),
                SizedBox(width: 21),
                AgeWeightInfoWidget(
                  isAgeComponent: false,
                  onMinusTap: () {},
                  onPlusTap: () {},
                  number: weight,
                ),
              ],
            ),
            SizedBox(height: 23),
            Container(
              decoration: BoxDecoration(
                color: AppColorsPath.white,
                borderRadius: BorderRadius.circular(12),
              ),
              height: 183 / 852 * size.height,
              width: size.width - 30 * 2,
              padding: const EdgeInsets.fromLTRB(28, 18, 30, 25),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  AppText(
                    content: "Height (CM) ",
                    style: AppTextStyle.text17darkBlueRegular,
                  ),
                  AppText(
                    content: height.toString(),
                    style: AppTextStyle.text57darkBlueBold,
                  ),
                  //Slider(value: height, onChanged: (value) min : 50 , max : 300)
                ],
              ),
            ),
            SizedBox(height: 23),
            Container(
              decoration: BoxDecoration(
                color: AppColorsPath.white,
                borderRadius: BorderRadius.circular(12),
              ),
              height: 135 / 852 * size.height,
              width: size.width - 30 * 2,
              padding: const EdgeInsets.fromLTRB(28, 18, 30, 25),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  AppText(
                    content: "Gender",
                    style: AppTextStyle.text17darkBlueRegular,
                  ),
                  SizedBox(height: 16),
                ],
              ),
            ),
            SizedBox(height: 31),
            AppButton(
              onTap: () {
                final bmi = weight / ((height / 100) * (height / 100));
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BmiResultScreen()),
                );
              },
              content: "Calculator BMI",
              isWhite: false,
            ),
          ],
        ),
      ),
    );
  }
}