import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_images.dart';
import 'package:fruits_hub/features/onboarding/presentation/widgets/page_view_item.dart';

import '../../../../generated/l10n.dart';

class OnBoardingPageView extends StatelessWidget {
  const OnBoardingPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView(
      children: [
        PageViewItem(
          image: AppImages.imagesPageViewItem1Image,
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
