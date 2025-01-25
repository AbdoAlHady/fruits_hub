import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruits_hub/core/helper/extensions.dart';
import 'package:fruits_hub/core/routing/routes.dart';
import 'package:fruits_hub/core/services/cache_helper.dart';
import 'package:fruits_hub/core/services/firebase_auth_service.dart';
import 'package:fruits_hub/core/services/get_it_service.dart';
import 'package:fruits_hub/core/utils/app_images.dart';
import 'package:fruits_hub/core/utils/prefs_keys.dart';

class SplashScreenBody extends StatefulWidget {
  const SplashScreenBody({super.key});

  @override
  State<SplashScreenBody> createState() => _SplashScreenBodyState();
}

class _SplashScreenBodyState extends State<SplashScreenBody> {
  @override
  void initState() {
    excuteNavigation();
    super.initState();
  }

  void excuteNavigation() async {
    bool isOnBoarding =
        await CacheHelper().getData(key: PrefsKeys.isOnBoardingSeen) ?? false;

    Future.delayed(const Duration(seconds: 2), () {
      if (isOnBoarding) {
        var isLoggedIn = getIt<FirebaseAuthService>().isLoggedIn();
        if (isLoggedIn) {
          context.pushReplacementNamed(Routes.homeScreen);
        } else {
          context.pushReplacementNamed(Routes.loginScreen);
        }
      } else {
        context.pushReplacementNamed(Routes.onBoardingScreen);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [SvgPicture.asset(AppImages.imagesPlant)],
        ),
        SvgPicture.asset(AppImages.imagesLogo),
        SvgPicture.asset(AppImages.imagesSplashBottom, fit: BoxFit.fill),
      ],
    );
  }
}
