import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_hub/core/helper/spacing.dart';
import 'package:fruits_hub/features/home/presentation/widgets/home/featured_item.dart';

class FeaturedListView extends StatelessWidget {
  const FeaturedListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 158.h,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        separatorBuilder: (context, index) => horizontalSpace(8),
        itemBuilder: (context, index) {
          return FeaturedItem();
        },
      ),
    );
  }
}
