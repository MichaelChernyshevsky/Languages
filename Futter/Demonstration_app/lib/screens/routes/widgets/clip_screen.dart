import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ClipRRectScreen extends StatelessWidget {
  const ClipRRectScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              clipBehavior: Clip.hardEdge,
              child: SvgPicture.asset(
                "assets/road.svg",
                width: 100,
                height: 100,
              ),
            ),
            ClipOval(
              child: SvgPicture.asset(
                "assets/road.svg",
                width: 100,
                height: 100,
              ),
            ),
            ClipPath(
              child: SvgPicture.asset(
                "assets/road.svg",
                width: 100,
                height: 100,
              ),
            ),
          ],
        ));
  }
}
