import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_hub/core/theme/app_text_styles.dart';
import 'package:fruits_hub/core/utils/app_images.dart';
import 'package:fruits_hub/core/widgets/app_custom_button.dart';

class FeaturedItem extends StatelessWidget {
  const FeaturedItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 1.sw,
      child: AspectRatio(
        aspectRatio: 342.w / 158.h,
        child: Stack(
          children: [
            Positioned(
              right: 0.4.sw,
              bottom: 0,
              top: 0,
              left: 0,
              child: Image.asset(
                AppImages.imagesWatermelonTest,
                fit: BoxFit.fill,
              ),
            ),
            Container(
              padding: EdgeInsetsDirectional.only(start: 33.w),
              width: 0.5.sw,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    AppImages.imagesFeaturedItemBackground,
                  ),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                spacing: 8.h,
                children: [
                  Text(
                    "عروض العيد",
                    style: AppTextStyles.font13GreyW400
                        .copyWith(color: Colors.white),
                  ),
                  Text(
                    "خصم 25%",
                    style:
                        AppTextStyles.font19W700.copyWith(color: Colors.white),
                  ),
                  AppCustomButton(
                    onPressed: () {},
                    text: 'تسوق الان',
                    width: 116.w,
                    height: 32.h,
                    backgroundColor: Colors.white,
                    textStyle: AppTextStyles.font13PrimaryW700,
                    radius: 4,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
