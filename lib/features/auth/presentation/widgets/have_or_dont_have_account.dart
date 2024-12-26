import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fruits_hub/core/theme/app_colors.dart';
import 'package:fruits_hub/core/theme/app_text_styles.dart';

class HaveOrDontHaveAccount extends StatelessWidget {
  const HaveOrDontHaveAccount(
      {super.key,
      required this.text1,
      required this.text2,
      required this.onTap});
  final String text1;
  final String text2;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return Text.rich(TextSpan(children: [
      TextSpan(
        text: text1,
        style: AppTextStyles.font16W600.copyWith(color: AppColors.grey),
      ),
      TextSpan(
        text: text2,
        style: AppTextStyles.font16W600.copyWith(color: AppColors.primaryColor),
        recognizer: TapGestureRecognizer()..onTap = onTap,
      ),
    ]));
  }
}
