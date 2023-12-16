// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: must_be_immutable

part of 'bloc.dart';

abstract class AuthEvent extends Equatable {}

class SignInEvent extends AuthEvent {
  final String email;
  final String password;

  SignInEvent({required this.email, required this.password});

  @override
  List<Object?> get props => [email, password];
}

class SignUpEvent extends AuthEvent {
  final String email;
  final String password;

  SignUpEvent({required this.email, required this.password});
  @override
  List<Object?> get props => [email, password];
}

class ResetPasswordEvent extends AuthEvent {
  final String email;

  ResetPasswordEvent({required this.email});
  @override
  List<Object?> get props => [email];
}

class LogoutEvent extends AuthEvent {
  @override
  List<Object?> get props => [];
}
