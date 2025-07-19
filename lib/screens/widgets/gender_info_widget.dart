import 'package:bmi_calculator/components/app_text.dart';
import 'package:bmi_calculator/components/app_text_style.dart';
import 'package:bmi_calculator/constants/app_colors_path.dart';
import 'package:flutter/material.dart';

class GenderSwitch extends StatefulWidget {

  final bool isFemale;
  final ValueChanged<bool> onChanged;

  const GenderSwitch({
    super.key,
    required this.isFemale,
    required this.onChanged,
  });

  @override
  State<GenderSwitch> createState() => _GenderSwitchState();
}

class _GenderSwitchState extends State<GenderSwitch> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.onChanged(!widget.isFemale);
      },
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: AppColorsPath.lightWhite,
          border: Border.all(color: AppColorsPath.purple.withValues(alpha: 0.5)),
        ),
        child: Stack(
          children: [
            AnimatedAlign(
              alignment: widget.isFemale ? Alignment.centerRight : Alignment.centerLeft,
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOut,
              child: Container(
                width: MediaQuery.of(context).size.width * 0.4,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: AppColorsPath.purple,
                ),
              ),
            ),
            // Row for the text labels
            Row(
              children: [
                Expanded(
                  child: Center(
                    child: AppText(
                      content: "Male",
                      style: AppTextStyle.text17darkBlueMedium.copyWith(
                        color: !widget.isFemale ? AppColorsPath.white : AppColorsPath.darkBlue,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Center(
                    child: AppText(
                      content: "Female",
                      style: AppTextStyle.text17darkBlueMedium.copyWith(
                        color: widget.isFemale ? AppColorsPath.white : AppColorsPath.darkBlue,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}