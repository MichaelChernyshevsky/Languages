import 'package:educational_project/screens/routes/apps/api.app/api.list_screen.dart';
import 'package:flutter/material.dart';

class ApiApp extends StatelessWidget {
  const ApiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const ApiListScreen(),
    );
  }
}
