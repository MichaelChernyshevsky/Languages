import 'package:app_with_apps/api/notes/connections/folder_api.dart';
import 'package:app_with_apps/api/notes/connections/note_api.dart';
import 'package:app_with_apps/constants/models/notes/folder_class.dart';
import 'package:app_with_apps/constants/models/notes/note_class.dart';

class ServiceApiNotes {
  final FolderApi _folderApi = FolderApi();
  final NoteApi _noteApi = NoteApi();

  // common

  // folder
  Future<void> createFolder(String title) async =>
      await _folderApi.create(title);

  Future<List<Folder>> getFolders() async => await _folderApi.getData();

  Future<void> deleteFolder(int id) async => await _folderApi.delete(id);
  // note
  Future<void> createNote(String title) async => await _noteApi.create(title);

  Future<List<Note>> getNotes() async => await _noteApi.getData();

  Future<void> deleteNote(int id) async => await _noteApi.delete(id);
}
