import 'package:flutter/material.dart';
import 'package:fruits_hub/features/home/presentation/widgets/home/custom_button_navigation_bar.dart';

import '../widgets/home/home_screen_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: HomeScreenBody()),
      bottomNavigationBar: CustomButtonNavigationBar(),
    );
  }
}
