import 'package:flutter/material.dart';

class TaskCard extends StatelessWidget {
  const TaskCard(
      {super.key, required this.icon, required this.color, required this.name});
  final Icon icon;
  final Color color;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: DecoratedBox(
        decoration: BoxDecoration(
            border: Border.all(width: 3.0),
            borderRadius: const BorderRadius.all(
              Radius.circular(10.0),
            ),
            color: Colors.white),
        child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Row(
                children: [
                  IconTheme(
                      data: IconThemeData(size: 30, color: color), child: icon),
                  Padding(
                    padding: const EdgeInsets.only(left: 40.0),
                    child: Text(
                      name,
                      style: const TextStyle(fontSize: 20),
                    ),
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
