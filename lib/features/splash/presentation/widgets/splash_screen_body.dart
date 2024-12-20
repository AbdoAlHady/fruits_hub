import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruits_hub/core/utils/app_images.dart';

class SplashScreenBody extends StatelessWidget {
  const SplashScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          children: [SvgPicture.asset(AppImages.imagesPlant)],
        ),
        SvgPicture.asset(AppImages.imagesLogo),
        SvgPicture.asset(AppImages.imagesSplashBottom, fit: BoxFit.fill),
      ],
    );
  }
}
