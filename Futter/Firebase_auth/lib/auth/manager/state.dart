// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'bloc.dart';

abstract class AuthState extends Equatable {}

class AuthInit extends AuthState {
  @override
  List<Object?> get props => [];
}

class SuccessState extends AuthState {
  @override
  List<Object?> get props => [];
}

class ErrorState extends AuthState {
  @override
  List<Object?> get props => [];
}
