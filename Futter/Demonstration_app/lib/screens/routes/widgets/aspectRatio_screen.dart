import 'package:educational_project/imports.dart';

class AspectRatioScreen extends StatelessWidget {
  const AspectRatioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Expanded(
          child: AspectRatio(
        aspectRatio: 1,
        child: Container(),
      )),
    );
  }
}
