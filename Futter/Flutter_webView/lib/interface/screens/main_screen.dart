import 'package:app_with_apps/constants/exports/exports.dart';
import 'package:app_with_apps/constants/localization/app_localization.dart';
import 'package:app_with_apps/interface/screens/webview.dart';

class Apps extends StatefulWidget {
  const Apps({super.key});

  @override
  State<Apps> createState() => _AppsState();
}

class _AppsState extends State<Apps> {
  final TextEditingController _url = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Text(AppLocalizations.current.pasteUrl),
            TextField(controller: _url),
            ElevatedButton(
              onPressed: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => WebViewScreen(url: _url.text),
                ),
              ),
              child: Text(AppLocalizations.current.appName),
            ),
          ],
        ),
      ),
    );
  }
}
