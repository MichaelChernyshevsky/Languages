import 'package:flutter/material.dart';

class ExampleSizeBox extends StatelessWidget {
  const ExampleSizeBox({
    super.key,
    required this.text,
    required this.myWidth,
    required this.myHeight,
  });
  final String text;
  final double myWidth;
  final double myHeight;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: myWidth,
      height: myHeight,
      decoration: BoxDecoration(
        color: Colors.amber,
        border: Border.all(color: Colors.black),
      ),
      child: Text(text),
    );
  }
}
