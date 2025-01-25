import 'package:flutter/material.dart';
import 'package:fruits_hub/core/helper/spacing.dart';
import 'package:fruits_hub/core/theme/app_text_styles.dart';
import 'package:fruits_hub/core/widgets/fruits_grid_view.dart';

class BestSellingBody extends StatelessWidget {
  const BestSellingBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(child: verticalSpace(24)),
        SliverToBoxAdapter(
          child: Text('الأكثر مبيعًا', style: AppTextStyles.font16W700),
        ),
        SliverToBoxAdapter(child: verticalSpace(10)),
        FruitsGridView(),
      ],
    );
  }
}
