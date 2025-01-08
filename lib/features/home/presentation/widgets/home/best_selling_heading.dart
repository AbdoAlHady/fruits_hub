import 'package:flutter/material.dart';
import 'package:fruits_hub/core/theme/app_text_styles.dart';

class BestSellingHeading extends StatelessWidget {
  const BestSellingHeading({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("الأكثر مبيعًا", style: AppTextStyles.font16W700),
        Spacer(),
        Text("المزيد", style: AppTextStyles.font13GreyW400),
      ],
    );
  }
}
