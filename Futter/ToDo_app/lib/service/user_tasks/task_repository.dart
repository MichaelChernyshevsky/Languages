import 'package:flutter_application_2/model/task.dart';
import 'package:get_it/get_it.dart';

import 'hive_service.dart';

class TaskRepository {
  HiveService hiveService = GetIt.I.get<HiveService>();

  Future<List<Task>?> getTasks({DateTime? dateFilter}) async {
    // Firebase load
    // Hive clean and add all new dictionaries
    // or
    // Hive load
    final hivesMoney = hiveService.getTasks();

    return hivesMoney;
  }

  Future<bool> addTask(Task task) async {
    const bool isOk = true;

    return hiveService.addTask(task);
    // Firebase add
    // In case of error => isOk = false

    return isOk;
  }

  Future<bool> deleteTask(Task task) async {
    const bool isOk = true;

    return hiveService.removeTask(task);

    // Firebase add
    // In case of error => isOk = false

    return isOk;
  }
}
