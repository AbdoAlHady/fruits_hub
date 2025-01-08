import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_hub/core/theme/app_colors.dart';

abstract class AppTextStyles {
  static TextStyle font13GreyW400 = TextStyle(
      fontSize: 13.sp, color: AppColors.grey, fontWeight: FontWeight.w400);

  static TextStyle font13W600 =
      TextStyle(fontSize: 13.sp, fontWeight: FontWeight.w600);

  static TextStyle font13LightGreenW600 = TextStyle(
      fontSize: 13.sp,
      color: AppColors.lightGreen,
      fontWeight: FontWeight.w600);

  static TextStyle font13GreyW700 = TextStyle(
      fontSize: 13.sp, color: AppColors.grey, fontWeight: FontWeight.w700);

  static TextStyle font13W700 =
      TextStyle(fontSize: 13.sp, fontWeight: FontWeight.w700);

  static TextStyle font13PrimaryW700 = TextStyle(
      fontSize: 13.sp,
      color: AppColors.primaryColor,
      fontWeight: FontWeight.w700);

  static TextStyle font13LightDarkW600 = TextStyle(
      fontSize: 13.sp, color: AppColors.lightDark, fontWeight: FontWeight.w600);

  static TextStyle font16GreyW400 = TextStyle(
      fontSize: 16.sp, fontWeight: FontWeight.w400, color: AppColors.grey);

  static TextStyle font16W600 =
      TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w600);

  static TextStyle font16WhiteW700 = TextStyle(
      fontSize: 16.sp, color: Colors.white, fontWeight: FontWeight.w700);

  static TextStyle font16W700 =
      TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w700);

  static TextStyle font16DarkBlueW700 = TextStyle(
      fontSize: 16.sp, color: AppColors.darkBlue, fontWeight: FontWeight.w700);

  static TextStyle font19W700 =
      TextStyle(fontSize: 19.sp, fontWeight: FontWeight.w700);

  static TextStyle font23W700 = TextStyle(
      fontSize: 23.sp, color: Colors.black, fontWeight: FontWeight.w700);
}
