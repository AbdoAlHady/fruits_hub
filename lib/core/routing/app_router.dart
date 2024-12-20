import 'package:flutter/material.dart';
import 'package:fruits_hub/core/routing/routes.dart';
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
      default:
        return null;
    }
  }
}
