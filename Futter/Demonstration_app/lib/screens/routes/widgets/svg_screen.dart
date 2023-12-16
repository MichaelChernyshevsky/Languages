import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SvgScreen extends StatefulWidget {
  const SvgScreen({super.key});

  @override
  State<SvgScreen> createState() => _SvgScreenState();
}

class _SvgScreenState extends State<SvgScreen> {
  Color opacityLevel = Colors.black.withOpacity(1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          ElevatedButton(
              onPressed: () {
                setState(() => opacityLevel =
                    opacityLevel == Colors.black.withOpacity(1)
                        ? Colors.black.withOpacity(0)
                        : Colors.black.withOpacity(1));
              },
              child: const Text("press"))
        ],
      ),
      body: SafeArea(
        child: AnimatedContainer(
            duration: const Duration(seconds: 3),
            child: SvgPicture.asset("assets/road.svg",
                colorFilter:
                    ColorFilter.mode(opacityLevel, BlendMode.dstATop))),
      ),
    );
  }
}
