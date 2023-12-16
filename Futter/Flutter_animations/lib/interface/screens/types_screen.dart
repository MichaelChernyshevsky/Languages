import 'package:app_with_apps/core/exports/exports.dart';
import 'package:app_with_apps/core/localization/app_localization.dart';
import 'package:app_with_apps/interface/routes/app_routes.dart';

class Apps extends StatelessWidget {
  const Apps({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(AppLocalizations.current.appName)),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Column(
            children: [
              ElevatedButton(
                onPressed: () =>
                    Navigator.of(context).pushNamed(AppRoutes.riveScreen),
                child: Text(AppLocalizations.current.rive),
              ),
              ElevatedButton(
                onPressed: () =>
                    Navigator.of(context).pushNamed(AppRoutes.riveScreen),
                child: Text(AppLocalizations.current.empty),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
