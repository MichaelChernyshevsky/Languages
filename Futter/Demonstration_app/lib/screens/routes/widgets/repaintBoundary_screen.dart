import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class RepaintBoundaryScreen extends StatelessWidget {
  const RepaintBoundaryScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // обявляем перерисовку
    debugRepaintRainbowEnabled = true;
    return Scaffold(
      appBar: AppBar(),
      body: const Center(
        child: MyWidget(),
      ),
    );
  }
}

class MyWidget extends StatefulWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  bool isRepaintActive = false;

  void onToggleRepaint(bool newVal) => setState(() => isRepaintActive = newVal);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Switch.adaptive(
          value: isRepaintActive,
          onChanged: onToggleRepaint,
        ),
        SizedBox(
          height: 100,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              isRepaintActive
                  ? const RepaintBoundary(child: RotatingWidget())
                  : const RotatingWidget(),
              const StableWidget(),
            ],
          ),
        )
      ],
    );
  }
}

// крутящийся виджет
class RotatingWidget extends StatefulWidget {
  const RotatingWidget({Key? key}) : super(key: key);

  @override
  State<RotatingWidget> createState() => _RotatingWidgetState();
}

class _RotatingWidgetState extends State<RotatingWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Tween<double> _animation;
  double rotation = 0;
  // очистка
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  // инициализация
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );
    _animation = Tween<double>(begin: 0, end: 1);
    _animation.animate(_controller).addListener(() {
      setState(() {
        rotation = _controller.value * math.pi * 2;
      });
    });
    _controller.repeat();
  }

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: rotation,
      child: const Text("I'm spinning!"),
    );
  }
}

// виджет с постоянным свойством
class StableWidget extends StatelessWidget {
  const StableWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 100,
      width: 100,
      child: ColoredBox(
        color: Colors.orange,
        child: Center(
          child: Text('StableWidget'),
        ),
      ),
    );
  }
}
