import '../../../imports.dart';

class RichTextScreen extends StatelessWidget {
  const RichTextScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: RichText(
          text: const TextSpan(
            text: 'Hello ',
            children: <TextSpan>[
              TextSpan(
                  text: 'bold', style: TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: ' world!'),
              TextSpan(
                  text: ' I am', style: TextStyle(fontWeight: FontWeight.w100)),
            ],
          ),
        ),
      ),
    );
  }
}
