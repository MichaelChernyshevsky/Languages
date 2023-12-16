import 'package:flutter_application_2/model/color_adapter.dart';
import 'package:flutter_application_2/model/icon_adapter.dart';
import 'package:flutter_application_2/model/task.dart';
import 'package:hive/hive.dart';

class HiveService {
  late Box<Task> taskBox;

  Future init() async {
    Hive.registerAdapter(IconAdapter());
    Hive.registerAdapter(ColorAdapter());
    Hive.registerAdapter(TaskAdapter());
    taskBox = await Hive.openBox<Task>('tasks');
  }

  List<Task> getTasks() {
    return taskBox.values.toList();
  }

  Future<bool> addTask(Task money) async {
    return (await taskBox.add(money)) != -1;
  }

  Future<bool> removeTask(Task task) => task.delete().then((_) {
        return true;
      }).catchError((_) {
        return false;
      });

  Future wipeData() async {
    await Hive.deleteFromDisk();
    taskBox = await Hive.openBox<Task>('tasks');
  }
}
