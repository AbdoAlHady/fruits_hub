import 'package:flutter/material.dart';
import 'package:fruits_hub/core/routing/app_router.dart';
import 'package:fruits_hub/core/routing/routes.dart';

class FruitsHubApp extends StatelessWidget {
  const FruitsHubApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: AppRouter.navigatorKey,
      debugShowCheckedModeBanner: false,
      onGenerateRoute: AppRouter().onGenerateRoute,
      initialRoute: Routes.splashScreen,
    );
  }
}
