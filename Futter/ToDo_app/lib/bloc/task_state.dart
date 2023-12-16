part of 'task_bloc.dart';

@freezed
class TaskState with _$TaskState {
  // const factory TaskState.loggouted() = LoggoutedState;
  const factory TaskState.loading() = LoadingState;
  const factory TaskState.loaded(List<Task> tasks) = LoadedState;
  // const factory TaskState.loggined() = LogginedState;
  const factory TaskState.error(String error) = ErrorState;
}
