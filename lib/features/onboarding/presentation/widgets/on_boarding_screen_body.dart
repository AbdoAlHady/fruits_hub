import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_hub/core/helper/spacing.dart';
import 'package:fruits_hub/core/theme/app_colors.dart';
import 'package:fruits_hub/core/widgets/app_custom_button.dart';
import 'package:fruits_hub/features/onboarding/presentation/widgets/on_boarding_page_view.dart';

class OnBoardingScreenBody extends StatelessWidget {
  const OnBoardingScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: OnBoardingPageView()),
        DotsIndicator(
          dotsCount: 2,
          decorator: DotsDecorator(
            activeColor: AppColors.primaryColor,
            color: AppColors.lightGreen,
            size: Size(11.w, 11.h),
            activeSize: Size(11.w, 11.h),
          ),
        ),
        verticalSpace(29),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: AppCustomButton(onPressed: () {}, text: 'ابدأ الان'),
        ),
        verticalSpace(43)
      ],
    );
  }
}
