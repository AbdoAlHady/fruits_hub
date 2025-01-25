import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruits_hub/core/helper/spacing.dart';
import 'package:fruits_hub/core/theme/app_colors.dart';
import 'package:fruits_hub/core/theme/app_text_styles.dart';
import 'package:fruits_hub/core/utils/app_images.dart';

class FruitItem extends StatelessWidget {
  const FruitItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        color: AppColors.fruitCardColor,
      ),
      child: Stack(
        children: [
          Positioned(
            right: 0,
            top: 0,
            child: IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                AppImages.imagesHeartIcon,
                width: 16.w,
                height: 16.h,
                fit: BoxFit.fill,
              ),
            ),
          ),
          Positioned.fill(
              child: Column(
            children: [
              verticalSpace(20),
              Image.asset(
                AppImages.imagesWatermelonTest,
                width: 114.w,
                height: 105.h,
                fit: BoxFit.fill,
              ),
              Spacer(),
              ListTile(
                contentPadding: EdgeInsets.symmetric(horizontal: 8.w),
                title: Padding(
                  padding: EdgeInsets.only(bottom: 4.h),
                  child: Text(
                    'بطيخ',
                    style: AppTextStyles.font13W600,
                  ),
                ),
                subtitle: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: '20 جنيه /',
                        style: AppTextStyles.font13W700.copyWith(
                          color: Colors.orange,
                        ),
                      ),
                      TextSpan(
                        text: ' الكيلو',
                        style: AppTextStyles.font13W600.copyWith(
                          color: Colors.orange.withValues(alpha: 0.7),
                        ),
                      ),
                    ],
                  ),
                ),
                trailing: CircleAvatar(
                  backgroundColor: AppColors.primaryColor,
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                ),
              )
            ],
          ))
        ],
      ),
    );
  }
}
