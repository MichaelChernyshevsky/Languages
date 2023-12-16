import 'package:flutter/material.dart';

class RouteContainer extends StatelessWidget {
  const RouteContainer({
    super.key,
    required this.route,
    required this.tab,
    required this.index,
  });
  final int index;
  final String route;
  final VoidCallback tab;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: tab,
      child: Container(
        padding: const EdgeInsets.all(20),
        margin: const EdgeInsets.all(5),
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            color: Color(0xff282F33)),
        child: Text(
          "$index. ${route[1].toUpperCase()}${route.substring(2)}",
          style: const TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
    );
  }
}
