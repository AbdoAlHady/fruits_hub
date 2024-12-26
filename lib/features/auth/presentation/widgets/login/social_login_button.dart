import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruits_hub/core/helper/spacing.dart';

import 'package:fruits_hub/core/theme/app_colors.dart';
import 'package:fruits_hub/core/theme/app_text_styles.dart';

class SocialLoginButton extends StatelessWidget {
  const SocialLoginButton({
    super.key,
    required this.title,
    required this.onPressed,
    required this.image,
  });
  final String title;
  final VoidCallback onPressed;
  final String image;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      style: TextButton.styleFrom(
        backgroundColor: Colors.white,
        minimumSize: Size(1.sw, 54.h),
        padding: EdgeInsets.symmetric(
          horizontal: 18.w,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
          side: BorderSide(
            color: AppColors.lightGrey,
            width: 1.w,
          ),
        ),
      ),
      child: Row(
        children: [
          SvgPicture.asset(image),
          horizontalSpace(70),
          Text(
            title,
            style: AppTextStyles.font16W600.copyWith(
              color: AppColors.darkBlue,
            ),
          ),
        ],
      ),
    );

    //  Container(
    //   height: 56.h,
    //   padding: EdgeInsets.symmetric(
    //     horizontal: 19.w,
    //   ),
    //   decoration: BoxDecoration(
    //     color: Colors.white,
    //     borderRadius: BorderRadius.circular(16),
    //     border: Border.all(
    //       color: AppColors.lightGrey,
    //       width: 1.w,
    //     ),
    //   ),
    // child: Row(
    //   children: [
    //     Icon(
    //       Icons.facebook,
    //       color: AppColors.lightGreen,
    //     ),
    //     horizontalSpace(70),
    //     Text(
    //       'تسجيل بواسطة جوجل',
    //       style: AppTextStyles.font16W600.copyWith(
    //         color: AppColors.darkBlue,
    //       ),
    //     ),
    //   ],
    // ),
    // );
  }
}
