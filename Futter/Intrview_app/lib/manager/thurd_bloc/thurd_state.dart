// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'thurd_bloc.dart';

abstract class ThurdState extends Equatable {}

class WhetherInitial extends ThurdState {
  @override
  List<Object?> get props => [];
}

class WhetherSucess extends ThurdState {
  WhetherSucess({required this.whether});

  String whether;
  @override
  List<Object?> get props => [whether];
}

class WhetherError extends ThurdState {
  @override
  List<Object?> get props => [];
}

class WhetherLoading extends ThurdState {
  @override
  List<Object?> get props => [];
}
