// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'bloc.dart';

abstract class BlocState extends Equatable {}

class NotesInitial extends BlocState {
  @override
  List<Object?> get props => [];
}

class DeleteSucess extends BlocState {
  DeleteSucess();
  @override
  List<Object?> get props => [];
}

class BlocError extends BlocState {
  @override
  List<Object?> get props => [];
}
