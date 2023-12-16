import 'package:flutter/material.dart';

class ExampleProvider extends ChangeNotifier {
  List<String> examples = [
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
  ];
  final examples_1 = List.generate(10, (i) => "$i", growable: false);

  void setTotalWaste(String example) {
    examples.add(example);
    notifyListeners();
  }
}
