import 'package:notes/domain/model/note/note_model.dart';

abstract interface class NoteRepository {
  Future<List<NoteModel>> getNotes();
}
