import 'package:flutter/material.dart';
import 'package:fruits_hub/features/home/presentation/widgets/home/custom_home_app_bar.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: CustomHomeAppBar(),
        ),
      ],
    );
  }
}
