import 'package:educational_project/other/examples/sizebox.dart';
import 'package:flutter/material.dart';

class PhysicalModelScreen extends StatelessWidget {
  const PhysicalModelScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Center(
        child: PhysicalModel(
          color: Colors.white,
          child: ExampleSizeBox(
            myHeight: 300,
            myWidth: 300,
            text: '',
          ),
          shadowColor: Colors.red,
          elevation: 10.0,
          shape: BoxShape.rectangle,
        ),
      ),
    );
  }
}
