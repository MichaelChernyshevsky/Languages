// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'task_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TaskState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Task> tasks) loaded,
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Task> tasks)? loaded,
    TResult? Function(String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Task> tasks)? loaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingState value) loading,
    required TResult Function(LoadedState value) loaded,
    required TResult Function(ErrorState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingState value)? loading,
    TResult? Function(LoadedState value)? loaded,
    TResult? Function(ErrorState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingState value)? loading,
    TResult Function(LoadedState value)? loaded,
    TResult Function(ErrorState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskStateCopyWith<$Res> {
  factory $TaskStateCopyWith(TaskState value, $Res Function(TaskState) then) =
      _$TaskStateCopyWithImpl<$Res, TaskState>;
}

/// @nodoc
class _$TaskStateCopyWithImpl<$Res, $Val extends TaskState>
    implements $TaskStateCopyWith<$Res> {
  _$TaskStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadingStateCopyWith<$Res> {
  factory _$$LoadingStateCopyWith(
          _$LoadingState value, $Res Function(_$LoadingState) then) =
      __$$LoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingStateCopyWithImpl<$Res>
    extends _$TaskStateCopyWithImpl<$Res, _$LoadingState>
    implements _$$LoadingStateCopyWith<$Res> {
  __$$LoadingStateCopyWithImpl(
      _$LoadingState _value, $Res Function(_$LoadingState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingState with DiagnosticableTreeMixin implements LoadingState {
  const _$LoadingState();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TaskState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'TaskState.loading'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Task> tasks) loaded,
    required TResult Function(String error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Task> tasks)? loaded,
    TResult? Function(String error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Task> tasks)? loaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingState value) loading,
    required TResult Function(LoadedState value) loaded,
    required TResult Function(ErrorState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingState value)? loading,
    TResult? Function(LoadedState value)? loaded,
    TResult? Function(ErrorState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingState value)? loading,
    TResult Function(LoadedState value)? loaded,
    TResult Function(ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingState implements TaskState {
  const factory LoadingState() = _$LoadingState;
}

/// @nodoc
abstract class _$$LoadedStateCopyWith<$Res> {
  factory _$$LoadedStateCopyWith(
          _$LoadedState value, $Res Function(_$LoadedState) then) =
      __$$LoadedStateCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Task> tasks});
}

/// @nodoc
class __$$LoadedStateCopyWithImpl<$Res>
    extends _$TaskStateCopyWithImpl<$Res, _$LoadedState>
    implements _$$LoadedStateCopyWith<$Res> {
  __$$LoadedStateCopyWithImpl(
      _$LoadedState _value, $Res Function(_$LoadedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tasks = null,
  }) {
    return _then(_$LoadedState(
      null == tasks
          ? _value._tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<Task>,
    ));
  }
}

/// @nodoc

class _$LoadedState with DiagnosticableTreeMixin implements LoadedState {
  const _$LoadedState(final List<Task> tasks) : _tasks = tasks;

  final List<Task> _tasks;
  @override
  List<Task> get tasks {
    if (_tasks is EqualUnmodifiableListView) return _tasks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tasks);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TaskState.loaded(tasks: $tasks)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TaskState.loaded'))
      ..add(DiagnosticsProperty('tasks', tasks));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedState &&
            const DeepCollectionEquality().equals(other._tasks, _tasks));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_tasks));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedStateCopyWith<_$LoadedState> get copyWith =>
      __$$LoadedStateCopyWithImpl<_$LoadedState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Task> tasks) loaded,
    required TResult Function(String error) error,
  }) {
    return loaded(tasks);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Task> tasks)? loaded,
    TResult? Function(String error)? error,
  }) {
    return loaded?.call(tasks);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Task> tasks)? loaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(tasks);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingState value) loading,
    required TResult Function(LoadedState value) loaded,
    required TResult Function(ErrorState value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingState value)? loading,
    TResult? Function(LoadedState value)? loaded,
    TResult? Function(ErrorState value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingState value)? loading,
    TResult Function(LoadedState value)? loaded,
    TResult Function(ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class LoadedState implements TaskState {
  const factory LoadedState(final List<Task> tasks) = _$LoadedState;

  List<Task> get tasks;
  @JsonKey(ignore: true)
  _$$LoadedStateCopyWith<_$LoadedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorStateCopyWith<$Res> {
  factory _$$ErrorStateCopyWith(
          _$ErrorState value, $Res Function(_$ErrorState) then) =
      __$$ErrorStateCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$ErrorStateCopyWithImpl<$Res>
    extends _$TaskStateCopyWithImpl<$Res, _$ErrorState>
    implements _$$ErrorStateCopyWith<$Res> {
  __$$ErrorStateCopyWithImpl(
      _$ErrorState _value, $Res Function(_$ErrorState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$ErrorState(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorState with DiagnosticableTreeMixin implements ErrorState {
  const _$ErrorState(this.error);

  @override
  final String error;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TaskState.error(error: $error)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TaskState.error'))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorState &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorStateCopyWith<_$ErrorState> get copyWith =>
      __$$ErrorStateCopyWithImpl<_$ErrorState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Task> tasks) loaded,
    required TResult Function(String error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Task> tasks)? loaded,
    TResult? Function(String error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Task> tasks)? loaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingState value) loading,
    required TResult Function(LoadedState value) loaded,
    required TResult Function(ErrorState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingState value)? loading,
    TResult? Function(LoadedState value)? loaded,
    TResult? Function(ErrorState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingState value)? loading,
    TResult Function(LoadedState value)? loaded,
    TResult Function(ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorState implements TaskState {
  const factory ErrorState(final String error) = _$ErrorState;

  String get error;
  @JsonKey(ignore: true)
  _$$ErrorStateCopyWith<_$ErrorState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TaskEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Task task) addTask,
    required TResult Function(int id) deleatTask,
    required TResult Function() loadTasks,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Task task)? addTask,
    TResult? Function(int id)? deleatTask,
    TResult? Function()? loadTasks,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Task task)? addTask,
    TResult Function(int id)? deleatTask,
    TResult Function()? loadTasks,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddTaskEvent value) addTask,
    required TResult Function(DeleatTaskEvent value) deleatTask,
    required TResult Function(LoadTasksEvent value) loadTasks,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddTaskEvent value)? addTask,
    TResult? Function(DeleatTaskEvent value)? deleatTask,
    TResult? Function(LoadTasksEvent value)? loadTasks,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddTaskEvent value)? addTask,
    TResult Function(DeleatTaskEvent value)? deleatTask,
    TResult Function(LoadTasksEvent value)? loadTasks,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskEventCopyWith<$Res> {
  factory $TaskEventCopyWith(TaskEvent value, $Res Function(TaskEvent) then) =
      _$TaskEventCopyWithImpl<$Res, TaskEvent>;
}

/// @nodoc
class _$TaskEventCopyWithImpl<$Res, $Val extends TaskEvent>
    implements $TaskEventCopyWith<$Res> {
  _$TaskEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AddTaskEventCopyWith<$Res> {
  factory _$$AddTaskEventCopyWith(
          _$AddTaskEvent value, $Res Function(_$AddTaskEvent) then) =
      __$$AddTaskEventCopyWithImpl<$Res>;
  @useResult
  $Res call({Task task});
}

/// @nodoc
class __$$AddTaskEventCopyWithImpl<$Res>
    extends _$TaskEventCopyWithImpl<$Res, _$AddTaskEvent>
    implements _$$AddTaskEventCopyWith<$Res> {
  __$$AddTaskEventCopyWithImpl(
      _$AddTaskEvent _value, $Res Function(_$AddTaskEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? task = null,
  }) {
    return _then(_$AddTaskEvent(
      null == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as Task,
    ));
  }
}

/// @nodoc

class _$AddTaskEvent with DiagnosticableTreeMixin implements AddTaskEvent {
  const _$AddTaskEvent(this.task);

  @override
  final Task task;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TaskEvent.addTask(task: $task)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TaskEvent.addTask'))
      ..add(DiagnosticsProperty('task', task));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddTaskEvent &&
            (identical(other.task, task) || other.task == task));
  }

  @override
  int get hashCode => Object.hash(runtimeType, task);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddTaskEventCopyWith<_$AddTaskEvent> get copyWith =>
      __$$AddTaskEventCopyWithImpl<_$AddTaskEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Task task) addTask,
    required TResult Function(int id) deleatTask,
    required TResult Function() loadTasks,
  }) {
    return addTask(task);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Task task)? addTask,
    TResult? Function(int id)? deleatTask,
    TResult? Function()? loadTasks,
  }) {
    return addTask?.call(task);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Task task)? addTask,
    TResult Function(int id)? deleatTask,
    TResult Function()? loadTasks,
    required TResult orElse(),
  }) {
    if (addTask != null) {
      return addTask(task);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddTaskEvent value) addTask,
    required TResult Function(DeleatTaskEvent value) deleatTask,
    required TResult Function(LoadTasksEvent value) loadTasks,
  }) {
    return addTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddTaskEvent value)? addTask,
    TResult? Function(DeleatTaskEvent value)? deleatTask,
    TResult? Function(LoadTasksEvent value)? loadTasks,
  }) {
    return addTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddTaskEvent value)? addTask,
    TResult Function(DeleatTaskEvent value)? deleatTask,
    TResult Function(LoadTasksEvent value)? loadTasks,
    required TResult orElse(),
  }) {
    if (addTask != null) {
      return addTask(this);
    }
    return orElse();
  }
}

abstract class AddTaskEvent implements TaskEvent {
  const factory AddTaskEvent(final Task task) = _$AddTaskEvent;

  Task get task;
  @JsonKey(ignore: true)
  _$$AddTaskEventCopyWith<_$AddTaskEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleatTaskEventCopyWith<$Res> {
  factory _$$DeleatTaskEventCopyWith(
          _$DeleatTaskEvent value, $Res Function(_$DeleatTaskEvent) then) =
      __$$DeleatTaskEventCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$DeleatTaskEventCopyWithImpl<$Res>
    extends _$TaskEventCopyWithImpl<$Res, _$DeleatTaskEvent>
    implements _$$DeleatTaskEventCopyWith<$Res> {
  __$$DeleatTaskEventCopyWithImpl(
      _$DeleatTaskEvent _value, $Res Function(_$DeleatTaskEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$DeleatTaskEvent(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$DeleatTaskEvent
    with DiagnosticableTreeMixin
    implements DeleatTaskEvent {
  const _$DeleatTaskEvent(this.id);

  @override
  final int id;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TaskEvent.deleatTask(id: $id)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TaskEvent.deleatTask'))
      ..add(DiagnosticsProperty('id', id));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleatTaskEvent &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleatTaskEventCopyWith<_$DeleatTaskEvent> get copyWith =>
      __$$DeleatTaskEventCopyWithImpl<_$DeleatTaskEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Task task) addTask,
    required TResult Function(int id) deleatTask,
    required TResult Function() loadTasks,
  }) {
    return deleatTask(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Task task)? addTask,
    TResult? Function(int id)? deleatTask,
    TResult? Function()? loadTasks,
  }) {
    return deleatTask?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Task task)? addTask,
    TResult Function(int id)? deleatTask,
    TResult Function()? loadTasks,
    required TResult orElse(),
  }) {
    if (deleatTask != null) {
      return deleatTask(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddTaskEvent value) addTask,
    required TResult Function(DeleatTaskEvent value) deleatTask,
    required TResult Function(LoadTasksEvent value) loadTasks,
  }) {
    return deleatTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddTaskEvent value)? addTask,
    TResult? Function(DeleatTaskEvent value)? deleatTask,
    TResult? Function(LoadTasksEvent value)? loadTasks,
  }) {
    return deleatTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddTaskEvent value)? addTask,
    TResult Function(DeleatTaskEvent value)? deleatTask,
    TResult Function(LoadTasksEvent value)? loadTasks,
    required TResult orElse(),
  }) {
    if (deleatTask != null) {
      return deleatTask(this);
    }
    return orElse();
  }
}

abstract class DeleatTaskEvent implements TaskEvent {
  const factory DeleatTaskEvent(final int id) = _$DeleatTaskEvent;

  int get id;
  @JsonKey(ignore: true)
  _$$DeleatTaskEventCopyWith<_$DeleatTaskEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadTasksEventCopyWith<$Res> {
  factory _$$LoadTasksEventCopyWith(
          _$LoadTasksEvent value, $Res Function(_$LoadTasksEvent) then) =
      __$$LoadTasksEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadTasksEventCopyWithImpl<$Res>
    extends _$TaskEventCopyWithImpl<$Res, _$LoadTasksEvent>
    implements _$$LoadTasksEventCopyWith<$Res> {
  __$$LoadTasksEventCopyWithImpl(
      _$LoadTasksEvent _value, $Res Function(_$LoadTasksEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadTasksEvent with DiagnosticableTreeMixin implements LoadTasksEvent {
  const _$LoadTasksEvent();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TaskEvent.loadTasks()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'TaskEvent.loadTasks'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadTasksEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Task task) addTask,
    required TResult Function(int id) deleatTask,
    required TResult Function() loadTasks,
  }) {
    return loadTasks();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Task task)? addTask,
    TResult? Function(int id)? deleatTask,
    TResult? Function()? loadTasks,
  }) {
    return loadTasks?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Task task)? addTask,
    TResult Function(int id)? deleatTask,
    TResult Function()? loadTasks,
    required TResult orElse(),
  }) {
    if (loadTasks != null) {
      return loadTasks();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddTaskEvent value) addTask,
    required TResult Function(DeleatTaskEvent value) deleatTask,
    required TResult Function(LoadTasksEvent value) loadTasks,
  }) {
    return loadTasks(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddTaskEvent value)? addTask,
    TResult? Function(DeleatTaskEvent value)? deleatTask,
    TResult? Function(LoadTasksEvent value)? loadTasks,
  }) {
    return loadTasks?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddTaskEvent value)? addTask,
    TResult Function(DeleatTaskEvent value)? deleatTask,
    TResult Function(LoadTasksEvent value)? loadTasks,
    required TResult orElse(),
  }) {
    if (loadTasks != null) {
      return loadTasks(this);
    }
    return orElse();
  }
}

abstract class LoadTasksEvent implements TaskEvent {
  const factory LoadTasksEvent() = _$LoadTasksEvent;
}
