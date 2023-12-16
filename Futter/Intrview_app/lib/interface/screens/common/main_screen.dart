import 'package:app_with_apps/constants/exports/exports.dart';
import 'package:app_with_apps/constants/localization/text.dart';
import 'package:app_with_apps/interface/routes/app_routes.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () =>
                    Navigator.of(context).pushNamed(AppRoutes.firstScreen),
                child: Text(ConstantText.firstScreen),
              ),
              ElevatedButton(
                  onPressed: () =>
                      Navigator.of(context).pushNamed(AppRoutes.secondScreen),
                  child: Text(ConstantText.secondScreen)),
              ElevatedButton(
                  onPressed: () =>
                      Navigator.of(context).pushNamed(AppRoutes.thurdScreen),
                  child: Text(ConstantText.thurdScreen)),
            ],
          ),
        ),
      ),
    );
  }
}
