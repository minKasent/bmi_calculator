import 'package:bmi_calculator/components/app_button.dart';
import 'package:bmi_calculator/components/app_text.dart';
import 'package:bmi_calculator/components/app_text_style.dart';
import 'package:bmi_calculator/constants/app_colors_path.dart';
import 'package:bmi_calculator/constants/app_images_path.dart';
import 'package:bmi_calculator/screens/bmi_calculator_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColorsPath.purple,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 81 / 852 * size.height),
          Center(child: Image.asset(AppImagesPath.bmidoImg)),
          SizedBox(height: 59 / 852 * size.height),
          Center(
            child: Image.asset(
              AppImagesPath.bikeImg,
              height: 251 / 852 * size.height,
              width: size.width - 40 * 2,
            ),
          ),
          SizedBox(height: 95 / 852 * size.height),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 54),
            child: AppText(content: 'Get Started with\nTracking Your Health!'),
          ),
          SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 54),
            child: AppText(
              content:
                  'Calculate your BMI and stay on top of your wellness journey, effortlessly.',
              style: AppTextStyle.text15LightPurpleRegular,
            ),
          ),
          SizedBox(height: 38),
          Center(
            child: AppButton(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const BmiCalculatorScreen(),
                  ),
                );
              },
              content: 'Get Started',
            ),
          ),
        ],
      ),
    );
  }
}
