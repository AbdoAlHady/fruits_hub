import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruits_hub/core/helper/spacing.dart';
import 'package:fruits_hub/core/theme/app_text_styles.dart';
import 'package:fruits_hub/core/widgets/animate_do.dart';
import 'package:fruits_hub/generated/l10n.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem(
      {super.key,
      required this.image,
      required this.backgorundImage,
      required this.subTitle,
      required this.title,
      required this.isVisible});
  final String image, backgorundImage;
  final String subTitle;
  final Widget title;
  final bool isVisible;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.5,
          child: CustomFadeInDown(
            duration: 300,
            child: Stack(
              children: [
                // Using Positioned.fill to fill the parent widget
                Positioned.fill(
                  child: SvgPicture.asset(
                    backgorundImage,
                    fit: BoxFit.fill,
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional.bottomCenter,
                  child: Image.asset(
                    width: 270.w,
                    height: 266.h,
                    fit: BoxFit.fill,
                    image,
                  ),
                ),

                Visibility(
                  visible: isVisible,
                  child: Align(
                    alignment: AlignmentDirectional.topStart,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(S.of(context).skip,
                          style: AppTextStyles.font13GreyW400),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        verticalSpace(60),
        CustomFadeInRight(duration: 400, child: title),
        verticalSpace(24),
        CustomFadeInUp(
          duration: 500,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Text(subTitle,
                style: AppTextStyles.font13LightDarkW600,
                textAlign: TextAlign.center),
          ),
        ),
      ],
    );
  }
}
