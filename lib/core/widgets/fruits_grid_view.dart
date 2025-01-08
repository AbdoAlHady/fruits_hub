import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_hub/core/widgets/fruit_item.dart';

class FruitsGridView extends StatelessWidget {
  const FruitsGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 16.w,
        mainAxisSpacing: 8.h,
        childAspectRatio: 163.w / 215.h,
      ),
      itemCount: 5,
      itemBuilder: (context, index) {
        return FruitItem();
      },
    );
  }
}
