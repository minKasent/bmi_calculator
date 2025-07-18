import 'package:bmi_calculator/components/app_button.dart';
import 'package:bmi_calculator/components/app_text.dart';
import 'package:bmi_calculator/components/app_text_style.dart';
import 'package:bmi_calculator/constants/app_colors_path.dart';
import 'package:bmi_calculator/constants/app_icons_path.dart';
import 'package:bmi_calculator/screens/bmi_result_screen.dart';
import 'package:bmi_calculator/screens/widgets/age_weight_info_widget.dart';
import 'package:flutter/material.dart';

class BmiCalculatorScreen extends StatefulWidget {
  const BmiCalculatorScreen({super.key});

  @override
  State<BmiCalculatorScreen> createState() => _BmiCalculatorScreenState();
}

class _BmiCalculatorScreenState extends State<BmiCalculatorScreen> {
  int age = 30;
  int weight = 70;
  int height = 175;
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
                  isAgeComponent: true,
                  onMinusTap: () {
                    setState(() {
                      age--;
                    });
                  },
                  onPlusTap: () {
                    setState(() {
                      age++;
                    });
                  },
                  number: age,
                ),
                SizedBox(width: 21),
                AgeWeightInfoWidget(
                  isAgeComponent: false,
                  onMinusTap: () {
                    setState(() {
                      weight--;
                    });
                  },
                  onPlusTap: () {
                    setState(() {
                      weight++;
                    });
                  },
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
                  Slider(
                    padding: EdgeInsets.zero,
                    value: height.toDouble(),
                    inactiveColor: Color(0xFFCCCCCC),
                    activeColor: Color(0xFFCCCCCC),
                    thumbColor: AppColorsPath.purple,
                    min: 50,
                    max: 300,
                    onChanged: (value) {
                      value;
                      setState(() {
                        height = value.toInt();
                      });
                    },
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppText(
                        content: "50 cm",
                        style: AppTextStyle.text17darkBlueRegular.copyWith(
                          fontSize: 13,
                        ),
                      ),
                      AppText(
                        content: "300 cm",
                        style: AppTextStyle.text17darkBlueRegular.copyWith(
                          fontSize: 13,
                        ),
                      ),
                    ],
                  ),
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AppText(content: "Male",style: AppTextStyle.text17darkBlueRegular),
                      SizedBox(width: 10,),
                      Container(
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(63),
                         color: AppColorsPath.lightWhite,
                       ),
                        width: 135,
                        height: 41,
                        padding: EdgeInsets.fromLTRB(3, 3, 3, 0),
                        child: Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: AppColorsPath.purple,
                                borderRadius: BorderRadius.circular(63),
                              ),
                              width: 35,
                              height: 35,
                            ),
                          ],
                        ),

                      ),
                      SizedBox(width: 10,),
                      

                      AppText(content: "FeMale",style: AppTextStyle.text17darkBlueRegular),
                    ],
                  ),
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
