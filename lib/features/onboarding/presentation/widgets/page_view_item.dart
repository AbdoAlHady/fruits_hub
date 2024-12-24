import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruits_hub/core/helper/spacing.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem(
      {super.key,
      required this.image,
      required this.backgorundImage,
      required this.subTitle,
      required this.title});
  final String image, backgorundImage;
  final String subTitle;
  final Widget title;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.5,
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
                child: SvgPicture.asset(
                  image,
                ),
              ),

              Align(
                alignment: AlignmentDirectional.topStart,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text('تخط'),
                ),
              ),
            ],
          ),
        ),
        verticalSpace(60),
        title,
        verticalSpace(24),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Text(subTitle, textAlign: TextAlign.center),
        ),
      ],
    );
  }
}
