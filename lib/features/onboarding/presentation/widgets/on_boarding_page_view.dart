import 'package:flutter/material.dart';
import 'package:fruits_hub/core/theme/app_colors.dart';
import 'package:fruits_hub/core/theme/app_text_styles.dart';
import 'package:fruits_hub/core/utils/app_images.dart';
import 'package:fruits_hub/features/onboarding/presentation/widgets/page_view_item.dart';

import '../../../../generated/l10n.dart';

class OnBoardingPageView extends StatelessWidget {
  const OnBoardingPageView({super.key, required this.pageController});
  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: [
        PageViewItem(
          image: AppImages.imagesPageViewItem1Image,
          isVisible: true,
          backgorundImage: AppImages.imagesPageViewItem1BackgroundImage,
          subTitle: S.of(context).onBoardingSubtitle1,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                S.of(context).welcomeIn,
                style: AppTextStyles.font23W700,
              ),
              Text(
                S.of(context).fruits,
                style: AppTextStyles.font23W700
                    .copyWith(color: AppColors.primaryColor),
              ),
              Text(
                S.of(context).hub,
                style: AppTextStyles.font23W700
                    .copyWith(color: Colors.orangeAccent),
              ),
            ],
          ),
        ),
        PageViewItem(
          image: AppImages.imagesPageViewItem2Image,
          isVisible: false,
          backgorundImage: AppImages.imagesPageViewItem2BackgroundImage,
          subTitle: S.of(context).onBoardingSubtitle2,
          title: Text(
            S.of(context).searchAndShop,
            style: AppTextStyles.font23W700,
          ),
        ),
      ],
    );
  }
}
