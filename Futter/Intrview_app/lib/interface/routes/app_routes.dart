import 'package:app_with_apps/constants/exports/exports.dart';
import 'package:app_with_apps/interface/screens/common/first_screen.dart';
import 'package:app_with_apps/interface/screens/common/main_screen.dart';
import 'package:app_with_apps/interface/screens/common/second_screen.dart';
import 'package:app_with_apps/interface/screens/common/thurd_screen.dart';
import 'package:app_with_apps/interface/screens/start/splash_screen.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';
  static const String mainScreen = '/main_creen';
  static const String firstScreen = '/first_screen';
  static const String secondScreen = '/second_screen';
  static const String thurdScreen = '/thurd_screen';

  static Map<String, WidgetBuilder> get routes => {
        splashScreen: (_) => const SplashScreen(),
        mainScreen: (_) => const MainScreen(),
        firstScreen: (_) => const FirstScreen(),
        secondScreen: (_) => const SecondScreen(),
        thurdScreen: (_) => const ThurdScreen(),
      };
}
