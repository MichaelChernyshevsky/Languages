import 'package:flutter/material.dart';
import 'package:flutter_app_3/screens/quiz/quiz_screen.dart';
import 'package:flutter_app_3/screens/score/score_screen.dart';
import 'package:flutter_app_3/screens/welcome/welcome_screen.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Quiz App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: QuizScreen(),
    );
  }
}
