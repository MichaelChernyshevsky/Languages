// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TaskAdapter extends TypeAdapter<Task> {
  @override
  final int typeId = 0;

  @override
  Task read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Task(
      time: fields[1] as String,
      name: fields[0] as String,
      countOnTime: fields[3] as int,
      infinityCount: fields[4] as bool,
      icon: fields[6] as Icon,
      iconColor: fields[5] as Color,
      countDays: fields[2] as int?,
    );
  }

  @override
  void write(BinaryWriter writer, Task obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.time)
      ..writeByte(2)
      ..write(obj.countDays)
      ..writeByte(3)
      ..write(obj.countOnTime)
      ..writeByte(4)
      ..write(obj.infinityCount)
      ..writeByte(5)
      ..write(obj.iconColor)
      ..writeByte(6)
      ..write(obj.icon);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TaskAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
