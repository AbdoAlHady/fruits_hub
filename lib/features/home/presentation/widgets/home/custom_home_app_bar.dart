import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruits_hub/core/theme/app_text_styles.dart';
import 'package:fruits_hub/core/utils/app_images.dart';

class CustomHomeAppBar extends StatelessWidget {
  const CustomHomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Image.asset(AppImages.imagesProfileImage),
      title: Text(
        'صباح الخير..!',
        style: AppTextStyles.font16GreyW400,
      ),
      subtitle: Text(
        'عبد الهادى',
        style: AppTextStyles.font16DarkBlueW700,
      ),
      trailing: Container(
        width: 34.w,
        height: 34.h,
        padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 5.h),
        decoration: BoxDecoration(
          color: Color(0xffEEF8ED),
          shape: BoxShape.circle,
        ),
        child: SvgPicture.asset(AppImages.imagesNotification),
      ),
    );
  }
}
