import 'package:flutter/material.dart';
import 'package:flutter_application_2/screens/widget/main/challeng_widget.dart';
import 'package:flutter_application_2/screens/widget/main/stat_widget.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Statictic(),
          Challanges(),
        ],
      ),
    );
  }
}
