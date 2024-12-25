import 'package:flutter/material.dart';
import 'package:fruits_hub/features/onboarding/presentation/widgets/on_boarding_screen_body.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: OnBoardingScreenBody()),
    );
  }
}
