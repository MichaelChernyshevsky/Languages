import '../../../imports.dart';

class SelectableTextScreen extends StatelessWidget {
  const SelectableTextScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Center(
          child: SelectableText.rich(
        TextSpan(
          text: 'Hello',
          children: <TextSpan>[
            TextSpan(
                text: ' beautiful ',
                style: TextStyle(fontStyle: FontStyle.italic)),
            TextSpan(
                text: 'world', style: TextStyle(fontWeight: FontWeight.bold)),
          ],
        ),
      )),
    );
  }
}
