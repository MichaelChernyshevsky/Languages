import 'package:flutter/material.dart';

class LinerGradientScreen extends StatelessWidget {
  const LinerGradientScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ShaderMask(
          shaderCallback: (bounds) => MyGradient().createShader(bounds),
          child: const Text(
            "Hello Flutter ",
            style: TextStyle(
              fontWeight: FontWeight.w800,
              color: Colors.white,
              fontSize: 50,
            ),
          ),
        ),
      ),
    );
  }

  LinearGradient MyGradient() {
    return const LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.topRight,
      transform: GradientRotation(90),
      colors: <Color>[
        Color(0xff1f005c),
        Color(0xff5b0060),
        Color(0xff870160),
        Color(0xffac255e),
        Color(0xffca485c),
        Color(0xffe16b5c),
        Color(0xfff39060),
        Color(0xffffb56b),
      ],
      tileMode: TileMode.mirror,
    );
  }
}
