import 'package:equatable/equatable.dart';
import 'package:project/models/money.dart';

class MoneyState extends Equatable {
  @override
  List<Object> get props => <Object>[];
}

class LoadingState extends MoneyState {}

class ErrorState extends MoneyState {
  ErrorState(this.message);
  final String message;

  @override
  List<Object> get props => <Object>[message];
}

class LoadedMoneyState extends MoneyState {
  LoadedMoneyState({
    this.moneys = const <Money>[],
  });
  
  final List<Money> moneys;

  @override
  List<Object> get props => <Object>[moneys];
}
