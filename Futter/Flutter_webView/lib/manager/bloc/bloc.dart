// ignore_for_file: invalid_use_of_visible_for_testing_member
import 'package:app_with_apps/api/notes/service/api_service.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'event.dart';
part 'state.dart';

class SomeBloc extends Bloc<BlocEvent, BlocState> {
  SomeBloc() : super(NotesInitial()) {
    on<DeleteFolderEvent>(_deleteFolder);
    on<DeleteNoteEvent>(_deleteNote);
    on<CreateNoteEvent>(_createNote);
    on<CreateFolderEvent>(_createFolder);
  }

  ServiceApiNotes service = ServiceApiNotes();

  Future<void> _deleteFolder(
      DeleteFolderEvent event, Emitter<BlocState> state) async {
    try {
      await service.deleteFolder(event.id);
      emit(DeleteSucess());
    } catch (error) {
      emit(BlocError());
    }
  }

  Future<void> _deleteNote(
      DeleteNoteEvent event, Emitter<BlocState> state) async {
    try {
      await service.deleteNote(event.id);
      emit(DeleteSucess());
    } catch (error) {
      emit(BlocError());
    }
  }

  Future<void> _createNote(
      CreateNoteEvent event, Emitter<BlocState> state) async {
    try {
      await service.createNote(event.title);
    } catch (error) {
      emit(BlocError());
    }
  }

  Future<void> _createFolder(
      CreateFolderEvent event, Emitter<BlocState> state) async {
    try {
      await service.createFolder(event.title);
    } catch (error) {
      emit(BlocError());
    }
  }
}
