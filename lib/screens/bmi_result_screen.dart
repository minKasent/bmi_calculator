import 'package:bmi_calculator/components/app_text.dart';
import 'package:bmi_calculator/constants/app_colors_path.dart';
import 'package:flutter/material.dart';

import '../components/app_button.dart';
import '../components/app_text_style.dart';
import 'bmi_calculator_screen.dart';

class BmiResultScreen extends StatelessWidget {
  const BmiResultScreen({super.key});

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
              content: "BMI CALCULATOR",
              style: AppTextStyle.text17darkBlueRegular,
            ),
            SizedBox(height: 67 / 852 * size.height),
            ValueListenableBuilder(valueListenable: age, builder: (context,value ,child){
              return  AppText(
                content: "Body Mass Index $value",
                style: AppTextStyle.text17darkBlueRegular.copyWith(fontSize: 27),
              );


            }),

            SizedBox(height: 42 / 852 * size.height),
            Container(
              height: 416 / 852 * size.height,
              width: size.width - 30 * 2,
              decoration: BoxDecoration(
                color: AppColorsPath.white,
                borderRadius: BorderRadius.circular(12),
              ),
              padding: EdgeInsets.fromLTRB(50, 56, 37, 26),
              child: Column(
                children: [
                  Column(
                    children: [
                      AppText(
                        content: "BMI Results",
                        style: AppTextStyle.text17darkBlueRegular.copyWith(
                          fontSize: 32,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RichText(
                            text: TextSpan(
                              text: "22",
                              style: TextStyle(
                                fontSize: 140,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF6C63FF),
                              ),
                              children: [
                                TextSpan(
                                  text: ".55",
                                  style: TextStyle(
                                    fontSize: 42,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xFF6C63FF),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      AppText(
                        content: "NORMAL BMI",
                        style: AppTextStyle.text17darkBlueMedium.copyWith(
                          fontSize: 24,
                        ),
                      ),
                      SizedBox(height: 18),
                      AppText(
                        content:
                            "Underweight: BMI less than 18.5 \n "
                            "Normal weight: BMI 18.5 to 24.9 \n Overweight: BMI 25 to 29.9 \n "
                            "Obesity: 30 to 40",
                        style: AppTextStyle.text15LightPurpleRegular.copyWith(
                          fontSize: 13,
                          color: AppColorsPath.darkBlue,
                          fontFamily: "Inter",
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 50 / 852 * size.height),
            AppButton(
              onTap: () {},
              content: "Save the results",
              isWhite: false,
            ),
          ],
        ),
      ),
    );
  }
}