import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/model/categories.dart';
import 'package:flutter_application_2/model/task.dart';
import 'package:flutter_material_symbols/flutter_material_symbols.dart';

class AppTask extends ChangeNotifier {
  AppTask() {}

  Categories _category = Categories.all;

  set category(Categories value) {
    _category = value;
    notifyListeners();
  }

  Categories get category => _category;

  List<Task> ecoTasks = [
    Task(
        time: '',
        name: 'Feed animals',
        countOnTime: 1,
        infinityCount: true,
        icon: const Icon(MaterialSymbols.pets),
        iconColor: Colors.green,
        countDays: 1),
    Task(
        time: '',
        name: 'Make the world a better ',
        countOnTime: 1,
        infinityCount: true,
        icon: const Icon(MaterialSymbols.public),
        iconColor: Colors.green,
        countDays: 1),
  ];
  List<Task> healthTasks = [
    Task(
        time: '',
        name: 'Brush teeth',
        countOnTime: 1,
        infinityCount: true,
        icon: const Icon(MaterialSymbols.dentistry),
        iconColor: Colors.green,
        countDays: 1),
    Task(
        time: '',
        name: 'Wash up',
        countOnTime: 1,
        infinityCount: true,
        icon: const Icon(MaterialSymbols.shower),
        iconColor: Colors.green,
        countDays: 1),
  ];
  List<Task> selfDevTasks = [
    Task(
        time: '',
        name: 'Read',
        countOnTime: 1,
        infinityCount: true,
        icon: const Icon(MaterialSymbols.book),
        iconColor: Colors.green,
        countDays: 1),
    Task(
        time: '',
        name: 'Smth new',
        countOnTime: 1,
        infinityCount: true,
        icon: const Icon(MaterialSymbols.browse_activity),
        iconColor: Colors.green,
        countDays: 1),
  ];
  List<Task> getList() {
    if (category == 'eco') {
      return ecoTasks;
    } else if (category == 'health') {
      return healthTasks;
    } else if (category == 'self-development') {
      return selfDevTasks;
    } else {
      return ecoTasks + healthTasks + selfDevTasks;
    }
  }
}
