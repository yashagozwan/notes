import 'package:floor/floor.dart';
import 'package:notes/infrastructure/source/local/floor/note/note_floor.dart';

@dao
abstract class NoteDAO {
  @Query("SELECT * FROM notes")
  Future<List<NoteFloor>> findAll();

  @Query("SELECT * FROM notes WHERE id = :noteId")
  Future<NoteFloor?> findOne(int noteId);

  @insert
  Future<void> insertOne(NoteFloor note);

  @update
  Future<void> updateOne(NoteFloor note);

  @delete
  Future<void> deleteOne(NoteFloor note);

  @Query("DELETE FROM notes")
  Future<void> deleteAll();
}
