import 'package:flutter/material.dart';
import 'package:fruits_hub/core/routing/routes.dart';
import 'package:fruits_hub/features/auth/presentation/screens/login_screen.dart';
import 'package:fruits_hub/features/auth/presentation/screens/signup_screen.dart';
import 'package:fruits_hub/features/best_selling_fruits/presentation/screens/best_selling_screen.dart';
import 'package:fruits_hub/features/home/presentation/screens/home_screen.dart';
import 'package:fruits_hub/features/onboarding/presentation/screens/on_boarding_screen.dart';
import 'package:fruits_hub/features/splash/presentation/screens/splash_screen.dart';

class AppRouter {
  const AppRouter._();
  static final AppRouter _instance = AppRouter._();
  factory AppRouter() => _instance;
  static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
  Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splashScreen:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case Routes.onBoardingScreen:
        return MaterialPageRoute(builder: (_) => const OnBoardingScreen());
      case Routes.loginScreen:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case Routes.signupScreen:
        return MaterialPageRoute(builder: (_) => const SignupScreen());
      case Routes.homeScreen:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case Routes.bestSellingScreen:
        return MaterialPageRoute(builder: (_) => const BestSellingScreen());
      default:
        return null;
    }
  }
}
