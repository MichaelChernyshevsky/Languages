import 'package:flutter/material.dart';

class SettingsProvider extends ChangeNotifier {
  List<List<Color>> themes = const [
    [
      Color.fromARGB(255, 102, 9, 88),
      Color.fromARGB(255, 102, 9, 88),
      Colors.black
    ],
    [
      Color.fromARGB(255, 102, 9, 88),
      Color.fromARGB(255, 102, 9, 88),
      Colors.white
    ],
  ];

  int themeIndex = 0;
  late Color background;
  late Color textColor;
  late Color elementColor;

  void chandeTheme(bool color) {
    themeIndex = color ? 0 : 1;
  }

  void setColor() {
    List<Color> theme = themes[themeIndex];
    background = themes[0] as Color;
    elementColor = themes[1] as Color;
    textColor = themes[2] as Color;
  }
}
