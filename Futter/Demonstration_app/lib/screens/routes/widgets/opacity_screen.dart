import 'package:educational_project/other/examples/sizebox.dart';
import 'package:flutter/material.dart';

class OpacityScreen extends StatefulWidget {
  const OpacityScreen({super.key});

  @override
  State<OpacityScreen> createState() => _OpacityScreenState();
}

class _OpacityScreenState extends State<OpacityScreen> {
  double opacityLevel = 1;
  void _changeOpacity() {
    setState(() => opacityLevel = opacityLevel == 0 ? 1.0 : 0.0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              AnimatedOpacity(
                duration: const Duration(seconds: 1),
                opacity: opacityLevel,
                child: const ExampleSizeBox(
                  text: '',
                  myHeight: 200,
                  myWidth: 200,
                ),
              ),
              const Opacity(
                opacity: 0.5,
                child: ExampleSizeBox(
                  text: '',
                  myHeight: 200,
                  myWidth: 200,
                ),
              ),
              const Opacity(
                opacity: 0.1,
                child: ExampleSizeBox(
                  text: '',
                  myHeight: 200,
                  myWidth: 200,
                ),
              ),
              ElevatedButton(
                onPressed: (() {
                  setState(() => opacityLevel = opacityLevel == 0 ? 1.0 : 0.0);
                }),
                child: const Text('Change'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
