import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruits_hub/core/helper/spacing.dart';
import 'package:fruits_hub/core/theme/app_colors.dart';
import 'package:fruits_hub/core/theme/app_text_styles.dart';

class ActiveNavigationBarItem extends StatelessWidget {
  const ActiveNavigationBarItem({
    super.key,
    required this.name,
    required this.image,
  });
  final String name, image;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.only(left: 16.w),
        decoration: BoxDecoration(
          color: AppColors.fruitCardColor,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 30.w,
              height: 30.h,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: AppColors.primaryColor,
                shape: BoxShape.circle,
              ),
              child: SvgPicture.asset(image),
            ),
            horizontalSpace(7.5),
            Text(
              name,
              style: AppTextStyles.font11W600
                  .copyWith(color: AppColors.primaryColor),
            ),
            horizontalSpace(7.5),
          ],
        ),
      ),
    );
  }
}
