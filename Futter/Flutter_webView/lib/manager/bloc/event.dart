// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: must_be_immutable

part of 'bloc.dart';

abstract class BlocEvent extends Equatable {}

class GetFoldersEvent extends BlocEvent {
  @override
  List<Object?> get props => [];
}

class GetNotesEvent extends BlocEvent {
  @override
  List<Object?> get props => [];
}

class DeleteFolderEvent extends BlocEvent {
  int id;
  DeleteFolderEvent({required this.id});
  @override
  List<Object?> get props => [id];
}

class DeleteNoteEvent extends BlocEvent {
  int id;
  DeleteNoteEvent({required this.id});
  @override
  List<Object?> get props => [id];
}

class CreateNoteEvent extends BlocEvent {
  String title;
  CreateNoteEvent({required this.title});
  @override
  List<Object?> get props => [title];
}

class CreateFolderEvent extends BlocEvent {
  String title;
  CreateFolderEvent({required this.title});
  @override
  List<Object?> get props => [title];
}
