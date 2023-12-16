import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

part 'task.g.dart';

@HiveType(typeId: 0)
class Task extends HiveObject {
  Task({
    required this.time,
    required this.name,
    required this.countOnTime,
    required this.infinityCount,
    required this.icon,
    required this.iconColor,
    required this.countDays,
  });
  @HiveField(0)
  String name;
  @HiveField(1)
  String time;
  @HiveField(2)
  int? countDays;
  @HiveField(3)
  int countOnTime;
  @HiveField(4)
  bool infinityCount;
  @HiveField(5)
  Color iconColor;
  @HiveField(6)
  Icon icon;
}
