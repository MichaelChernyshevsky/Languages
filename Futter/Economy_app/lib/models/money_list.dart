import 'package:equatable/equatable.dart';
import 'package:project/models/money.dart';

class MoneyList extends Equatable {
  factory MoneyList({List<Money>? words}) => MoneyList._(words ?? <Money>[]);

  const MoneyList._(this.moneys);
  final List<Money> moneys;

  void addMoney(Money money) {
    moneys.add(money);
  }

  void deleteMoney(Money money) {
    moneys.remove(money);
  }

  @override
  List<Object?> get props => <Object?>[moneys];
}
