import 'package:flutter/material.dart';

class ToolTipScreen extends StatelessWidget {
  const ToolTipScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              ToolTipText(),
              ToolTipIcon(),
            ]),
      ),
    );
  }
}

class ToolTipText extends StatelessWidget {
  const ToolTipText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Tooltip(
      message: 'Tooltip Text',
      child: Text('Text'),
    );
  }
}

class ToolTipIcon extends StatelessWidget {
  const ToolTipIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return const Tooltip(
      message: 'Tooltip Icon',
      child: Icon(Icons.accessibility_rounded),
    );
  }
}
