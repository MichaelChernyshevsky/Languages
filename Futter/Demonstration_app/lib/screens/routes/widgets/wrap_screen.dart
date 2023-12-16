import 'package:educational_project/other/examples/sizebox.dart';
import 'package:flutter/material.dart';

class WrapScreen extends StatelessWidget {
  const WrapScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Wrap(
        direction: Axis.vertical,
        children: const [
          ExampleSizeBox(
            text: '1',
            myHeight: 200,
            myWidth: 200,
          ),
          ExampleSizeBox(
            text: '2',
            myHeight: 200,
            myWidth: 200,
          ),
          ExampleSizeBox(
            text: '3',
            myHeight: 200,
            myWidth: 200,
          ),
          ExampleSizeBox(
            text: '4',
            myHeight: 200,
            myWidth: 200,
          ),
        ],
      ),
    );
  }
}
