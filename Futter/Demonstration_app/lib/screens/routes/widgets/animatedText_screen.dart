import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class AnimatedTextScreen extends StatelessWidget {
  const AnimatedTextScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          AnimatedTextKit(
            animatedTexts: [
              TypewriterAnimatedText(
                'Writer',
                speed: const Duration(milliseconds: 300),
              ),
              FadeAnimatedText('Fade'),
              ScaleAnimatedText('Scale'),
              RotateAnimatedText('Rotate'),
              TyperAnimatedText('Typer'),
              WavyAnimatedText('Wavy'),
            ],
            totalRepeatCount: 2,
            pause: const Duration(milliseconds: 300),
            displayFullTextOnTap: true,
            stopPauseOnTap: true,
          )
        ]),
      ),
    );
  }
}
