import 'package:equatable/equatable.dart';
import 'package:project/models/money.dart';

abstract class MoneyEvent extends Equatable {
  const MoneyEvent();
  @override
  List<Object> get props => <Object>[];
}

class LoadMoneysEvent extends MoneyEvent {
  const LoadMoneysEvent();
}

class AddMoneyEvent extends MoneyEvent {
  const AddMoneyEvent({
    required this.money,
  });

  final Money money;

  @override
  List<Object> get props => <Object>[money];
}

class ChangeMoneyEvent extends MoneyEvent {
  const ChangeMoneyEvent({
    required this.money,
  });
  final Money money;

  @override
  List<Object> get props => <Object>[money];
}

class DeleteMoneyEvent extends MoneyEvent {
  const DeleteMoneyEvent({
    required this.money,
  });
  final Money money;

  @override
  List<Object> get props => <Object>[money];
}
