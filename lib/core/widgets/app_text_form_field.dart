import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_hub/core/theme/app_colors.dart';
import 'package:fruits_hub/core/theme/app_text_styles.dart';

class AppTextFormField extends StatelessWidget {
  const AppTextFormField(
      {super.key,
      this.contentPadding,
      this.focusedBorder,
      this.enabledBorder,
      this.inputTextStyle,
      required this.hintText,
      this.hintStyle,
      this.isObscureText,
      this.suffixIcon,
      this.backgroundColor,
      this.controller,
      required this.validator,
      this.keyboardType});
  final EdgeInsetsGeometry? contentPadding;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  final TextStyle? inputTextStyle;
  final String hintText;
  final TextStyle? hintStyle;
  final bool? isObscureText;
  final Widget? suffixIcon;
  final Color? backgroundColor;
  final TextEditingController? controller;
  final Function(String?) validator;
  final TextInputType? keyboardType;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: TextFormField(
        onTapOutside: (event) {
          FocusManager.instance.primaryFocus?.unfocus();
        },
        controller: controller,
        validator: (value) => validator(value),
        keyboardType: keyboardType ?? TextInputType.text,
        obscureText: isObscureText ?? false,
        style: inputTextStyle ?? AppTextStyles.font16W600,
        decoration: InputDecoration(
          hintText: hintText,
          suffixIcon: suffixIcon,
          fillColor: backgroundColor ?? AppColors.lighterGrey,
          filled: true,
          hintStyle: AppTextStyles.font13GreyW700,
          contentPadding: contentPadding ??
              EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
          border: _buildBorder(),
          enabledBorder: enabledBorder ?? _buildBorder(),
          focusedBorder: focusedBorder ?? _buildBorder(),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4),
            borderSide: BorderSide(color: Colors.red, width: 1.5.w),
          ),
        ),
      ),
    );
  }

  OutlineInputBorder _buildBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(4),
      borderSide: BorderSide(color: AppColors.lightGrey, width: 1.5.w),
    );
  }
}
