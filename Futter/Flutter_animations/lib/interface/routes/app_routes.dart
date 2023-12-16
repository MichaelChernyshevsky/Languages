import 'package:app_with_apps/interface/screens/common/rive_screen.dart';
import 'package:app_with_apps/interface/screens/start/splash_screen.dart';
import 'package:app_with_apps/interface/screens/types_screen.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';
  static const String apps = '/apps_screen';
  static const String riveScreen = '/screen';

  static Map<String, WidgetBuilder> get routes => {
        splashScreen: (_) => const SplashScreen(),
        apps: (_) => const Apps(),
        riveScreen: (_) => const RiveScreen(),
      };
}
