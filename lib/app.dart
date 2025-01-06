import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_hub/core/helper/extensions.dart';
import 'package:fruits_hub/core/routing/app_router.dart';
import 'package:fruits_hub/core/routing/routes.dart';
import 'package:fruits_hub/core/theme/app_colors.dart';
import 'package:fruits_hub/generated/l10n.dart';

class FruitsHubApp extends StatelessWidget {
  const FruitsHubApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(context.width, context.height),
      minTextAdapt: true,
      splitScreenMode: true,
      // Use builder only if you need to use library outside ScreenUtilInit context
      builder: (_, child) {
        return MaterialApp(
          locale: Locale('ar'),
          localizationsDelegates: [
            S.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          theme: ThemeData(
              fontFamily: 'Cairo',
              scaffoldBackgroundColor: Colors.white,
              colorScheme:
                  ColorScheme.fromSeed(seedColor: AppColors.primaryColor)),
          supportedLocales: S.delegate.supportedLocales,
          navigatorKey: AppRouter.navigatorKey,
          debugShowCheckedModeBanner: false,
          onGenerateRoute: AppRouter().onGenerateRoute,
          initialRoute: Routes.homeScreen,
        );
      },
    );
  }
}
