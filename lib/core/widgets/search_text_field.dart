import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruits_hub/core/theme/app_text_styles.dart';
import 'package:fruits_hub/core/utils/app_images.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Color(0x0A000000),
            spreadRadius: 0,
            blurRadius: 9,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: TextFormField(
        onTapOutside: (event) {
          FocusManager.instance.primaryFocus?.unfocus();
        },
        style: AppTextStyles.font13GreyW400,
        decoration: InputDecoration(
          hintText: 'ابحث عن ....',
          fillColor: Colors.white,
          filled: true,
          contentPadding: EdgeInsets.symmetric(vertical: 12.0.h),
          prefixIcon: Container(
            width: 20.w,
            height: 20.h,
            alignment: Alignment.center,
            child: SvgPicture.asset(
              AppImages.imagesSearchIcon,
            ),
          ),
          suffixIcon: Container(
            width: 20.w,
            height: 20.h,
            alignment: Alignment.center,
            child: SvgPicture.asset(
              AppImages.imagesFilterIcon,
            ),
          ),
          hintStyle: AppTextStyles.font13GreyW700,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
