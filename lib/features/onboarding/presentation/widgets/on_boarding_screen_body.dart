import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_hub/core/helper/spacing.dart';
import 'package:fruits_hub/core/theme/app_colors.dart';
import 'package:fruits_hub/core/widgets/animate_do.dart';
import 'package:fruits_hub/core/widgets/app_custom_button.dart';
import 'package:fruits_hub/features/onboarding/presentation/widgets/on_boarding_page_view.dart';

class OnBoardingScreenBody extends StatefulWidget {
  const OnBoardingScreenBody({super.key});

  @override
  State<OnBoardingScreenBody> createState() => _OnBoardingScreenBodyState();
}

class _OnBoardingScreenBodyState extends State<OnBoardingScreenBody> {
  late final PageController pageController;
  int currentPage = 0;
  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(() {
      currentPage = pageController.page!.round();
      setState(() {});
    });
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: OnBoardingPageView(
            pageController: pageController,
          ),
        ),
        CustomFadeInUp(
          duration: 300,
          child: DotsIndicator(
            dotsCount: 2,
            decorator: DotsDecorator(
              activeColor: AppColors.primaryColor,
              color: currentPage == 1
                  ? AppColors.primaryColor
                  : AppColors.lightGreen,
              size: Size(11.w, 11.h),
              activeSize: Size(11.w, 11.h),
            ),
          ),
        ),
        verticalSpace(29),
        Visibility(
          visible: currentPage == 1,
          maintainAnimation: true,
          maintainSize: true,
          maintainState: true,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: AppCustomButton(onPressed: () {}, text: 'ابدأ الان'),
          ),
        ),
        verticalSpace(43)
      ],
    );
  }
}
