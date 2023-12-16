import 'package:app_with_apps/constants/exports/exports.dart';
import 'package:app_with_apps/constants/localization/app_localization.dart';
import 'package:app_with_apps/interface/routes/app_routes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(const Duration(seconds: 3), () async {
      goToNext();
    });
    super.initState();
  }

  void goToNext() {
    Navigator.of(context).popAndPushNamed(AppRoutes.mainScreen);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(AppLocalizations.current.appName),
      ),
    );
  }
}
