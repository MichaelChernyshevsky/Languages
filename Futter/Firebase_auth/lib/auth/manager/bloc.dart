// ignore_for_file: invalid_use_of_visible_for_testing_member

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';

part 'event.dart';
part 'state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthInit()) {
    on<SignInEvent>(_signIn);
    on<SignUpEvent>(_signUp);
    on<ResetPasswordEvent>(_resetPassword);
    on<LogoutEvent>(_logout);
  }

  Future<void> _signIn(SignInEvent event, Emitter<AuthState> state) async {
    try {
      final UserCredential auth = await FirebaseAuth.instance
          .signInWithEmailAndPassword(
              email: event.email, password: event.password);
      print(auth.user);
      emit(SuccessState());
    } catch (e) {
      emit(ErrorState());
    }
  }

  Future<void> _signUp(SignUpEvent event, Emitter<AuthState> state) async {
    try {
      final UserCredential auth = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(
              email: event.email, password: event.password);
      print(auth.user);
      emit(SuccessState());
    } catch (e) {
      emit(ErrorState());
    }
  }

  Future<void> _resetPassword(
      ResetPasswordEvent event, Emitter<AuthState> state) async {
    try {
      FirebaseAuth.instance.sendPasswordResetEmail(email: event.email);
      emit(SuccessState());
    } catch (e) {
      emit(ErrorState());
    }
    try {
      FirebaseAuth.instance
          .sendPasswordResetEmail(email: event.email)
          .then((value) => emit(SuccessState()));
    } catch (error) {
      emit(ErrorState());
    }
  }

  Future<void> _logout(LogoutEvent event, Emitter<AuthState> state) async {
    try {
      FirebaseAuth.instance.signOut();
      emit(SuccessState());
    } catch (e) {
      emit(ErrorState());
    }
  }
}
