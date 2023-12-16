import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class PageViewScreen extends StatefulWidget {
  const PageViewScreen({super.key});

  @override
  State<PageViewScreen> createState() => _PageViewScreenState();
}

class _PageViewScreenState extends State<PageViewScreen> {
  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();
    return Scaffold(
      appBar: AppBar(),
      body: PageView(
        scrollDirection: Axis.vertical,
        controller: controller,
        children: const <Widget>[
          Center(
            child: Text('vertical_1'),
          ),
          Center(
            child: Text('vertical_2'),
          ),
          Center(
            child: Text('vertical_3'),
          ),
        ],
      ),
    );
  }
}
