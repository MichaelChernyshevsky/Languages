import 'package:educational_project/screens/routes/apps/sql.app/sql.list_screen.dart';
import 'package:flutter/material.dart';

class SqlApp extends StatelessWidget {
  const SqlApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const SqlListScreen(),
    );
  }
}
