import 'package:flutter/material.dart';
import 'package:fruits_hub/core/helper/extensions.dart';
import 'package:fruits_hub/core/routing/routes.dart';
import 'package:fruits_hub/core/theme/app_text_styles.dart';

class BestSellingHeading extends StatelessWidget {
  const BestSellingHeading({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("الأكثر مبيعًا", style: AppTextStyles.font16W700),
        Spacer(),
        GestureDetector(
            onTap: () {
              context.pushNamed(Routes.bestSellingScreen);
            },
            child: Text("المزيد", style: AppTextStyles.font13GreyW400)),
      ],
    );
  }
}
