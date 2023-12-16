import 'package:flutter/foundation.dart';
import 'package:flutter_application_2/model/task.dart';
import 'package:flutter_application_2/service/user_tasks/task_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'task_state.dart';
part 'task_event.dart';
part 'task_bloc.freezed.dart';

class TaskBloc extends Bloc<TaskEvent, TaskState> {
  TaskBloc(this.taskRepository) : super(const TaskState.loaded([])) {
    on<AddTaskEvent>(_addTaskEvent);
    on<LoadTasksEvent>(_onLoadTasks);
    // on<DeleatTaskEvent>(_deleatTaskEvent);
  }
  final TaskRepository taskRepository;

  Future<void> _onLoadTasks(
      LoadTasksEvent event, Emitter<TaskState> emit) async {
    final List<Task>? tasks = await taskRepository.getTasks();
    if (tasks != null) {
      emit(LoadedState(tasks));
    } else {
      emit(const ErrorState('Could not load tasks'));
    }
  }

  Future<void> _addTaskEvent(
      AddTaskEvent event, Emitter<TaskState> emit) async {
    if (await taskRepository.addTask(event.task)) {
      emit(LoadedState(await taskRepository.getTasks() ?? []));
    } else {
      emit(const ErrorState('Could not adding tasks'));
    }
  }
}
