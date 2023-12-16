import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;

class BadgesScreen extends StatefulWidget {
  const BadgesScreen({super.key});

  @override
  State<BadgesScreen> createState() => _BadgesScreenState();
}

class _BadgesScreenState extends State<BadgesScreen> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                badges.Badge(
                  badgeAnimation: const badges.BadgeAnimation.slide(),
                  badgeStyle: const badges.BadgeStyle(
                      shape: badges.BadgeShape.instagram),
                  badgeContent: Text("$counter"),
                  child: const Icon(Icons.settings),
                ),
                badges.Badge(
                  badgeAnimation: const badges.BadgeAnimation.fade(),
                  badgeStyle:
                      const badges.BadgeStyle(shape: badges.BadgeShape.circle),
                  badgeContent: Text("$counter"),
                  child: const Icon(Icons.settings),
                ),
                badges.Badge(
                  badgeAnimation: const badges.BadgeAnimation.rotation(),
                  badgeStyle: const badges.BadgeStyle(
                    shape: badges.BadgeShape.instagram,
                  ),
                  badgeContent: Text("$counter"),
                  child: const Icon(Icons.settings),
                ),
                badges.Badge(
                  badgeAnimation: const badges.BadgeAnimation.scale(),
                  badgeStyle:
                      const badges.BadgeStyle(shape: badges.BadgeShape.square),
                  badgeContent: Text("$counter"),
                  child: const Icon(Icons.settings),
                ),
                badges.Badge(
                  badgeAnimation: const badges.BadgeAnimation.scale(),
                  badgeStyle:
                      const badges.BadgeStyle(shape: badges.BadgeShape.twitter),
                  badgeContent: Text("$counter"),
                  child: const Icon(Icons.settings),
                ),
              ],
            ),
            ElevatedButton(
              onPressed: (() {
                setState(() {
                  counter += 1;
                });
              }),
              child: const Text("+ notification "),
            ),
          ],
        ),
      ),
    );
  }
}
