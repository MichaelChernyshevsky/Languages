import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class FittedBoxScreen extends StatelessWidget {
  const FittedBoxScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: FittedBox(
          fit: BoxFit.fill,
          child: SvgPicture.asset("assets/road.svg"),
        ),
      ),
    );
  }
}
