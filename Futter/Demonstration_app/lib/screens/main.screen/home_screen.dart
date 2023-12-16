import 'package:educational_project/screens/main.screen/miniApp_screen.dart';
import 'package:educational_project/screens/main.screen/widgets_screen.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(10.0), // here the desired height
        child: AppBar(
          backgroundColor: const Color(0xff0D2743),
          // ...
        ),
      ),
      bottomNavigationBar: NavigationBar(
        backgroundColor: const Color(0x00ffffff),
        height: 60,
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            selectedIcon: Icon(
              Icons.explore,
              color: Colors.purple,
            ),
            icon: Icon(
              Icons.explore,
            ),
            label: 'Widgets',
          ),
          NavigationDestination(
            selectedIcon: Icon(
              Icons.commute,
              color: Colors.purple,
            ),
            icon: Icon(
              Icons.commute,
            ),
            label: 'Layouts',
          ),
          NavigationDestination(
            selectedIcon: Icon(
              Icons.bookmark,
              color: Colors.purple,
            ),
            icon: Icon(
              Icons.bookmark_border,
            ),
            label: 'MiniApp',
          ),
        ],
      ),
      body: <Widget>[
        const WidgetsScreen(),
        Container(
          color: Colors.green,
          alignment: Alignment.center,
          child: const Text('Page 2'),
        ),
        const MiniAppScreen(),
      ][currentPageIndex],
    );
  }
}
