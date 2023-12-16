import 'package:app_with_apps/constants/exports/exports.dart';
import 'package:app_with_apps/interface/screens/main_screen.dart';
import 'package:app_with_apps/interface/screens/start/splash_screen.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';
  static const String mainScreen = '/apps_screen';

  static Map<String, WidgetBuilder> get routes => {
        splashScreen: (_) => const SplashScreen(),
        mainScreen: (_) => const Apps(),
      };
}
