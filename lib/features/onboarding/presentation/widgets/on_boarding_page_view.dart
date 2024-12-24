import 'package:flutter/material.dart';
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
          isVisible:
              (pageController.hasClients ? pageController.page!.round() : 0) ==
                  0,
          backgorundImage: AppImages.imagesPageViewItem1BackgroundImage,
          subTitle: S.of(context).onBoardingSubtitle1,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("مرحبًا بك في"),
              Text('Fruit'),
              Text("HUB"),
            ],
          ),
        ),
        PageViewItem(
          image: AppImages.imagesPageViewItem2Image,
          isVisible:
              (pageController.hasClients ? pageController.page!.round() : 1) ==
                      1
                  ? false
                  : true,
          backgorundImage: AppImages.imagesPageViewItem2BackgroundImage,
          subTitle: S.of(context).onBoardingSubtitle2,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("مرحبًا بك في"),
              Text('Fruit'),
              Text("HUB"),
            ],
          ),
        ),
      ],
    );
  }
}
