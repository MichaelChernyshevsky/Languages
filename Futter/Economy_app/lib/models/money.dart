import 'package:hive_flutter/adapters.dart';

part 'money.g.dart';

@HiveType(typeId: 0)
class Money extends HiveObject {
  Money(
    this.wastedAmount,
    this.description,
    this.type,
    this.walue,
    this.relationToDollar,
    this.wastedDate,
  );
  @HiveField(0)
  final double wastedAmount;
  @HiveField(1)
  final String? description;
  @HiveField(2)
  final String? type;
  @HiveField(3)
  final String walue;
  @HiveField(4)
  final double relationToDollar;
  @HiveField(5)
  final DateTime wastedDate;
}
