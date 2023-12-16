part of 'task_bloc.dart';

@freezed
class TaskEvent with _$TaskEvent {
  const factory TaskEvent.addTask(Task task) = AddTaskEvent;
  const factory TaskEvent.deleatTask(int id) = DeleatTaskEvent;
  const factory TaskEvent.loadTasks() = LoadTasksEvent;
  // const factory TaskEvent.loagin() = LoaginEvent;
  // const factory TaskEvent.loagout() = LoagoutEvent;
}
