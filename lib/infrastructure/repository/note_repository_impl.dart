import 'package:injectable/injectable.dart';
import 'package:notes/domain/model/note/note_model.dart';
import 'package:notes/domain/repository/note_repository.dart';

@Singleton(as: NoteRepository)
final class NoteRepositoryImpl implements NoteRepository {
  @override
  Future<List<NoteModel>> getNotes() async {
    return List.generate(
      20,
      (index) => const NoteModel(),
    );
  }
}
