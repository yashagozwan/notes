import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:notes/domain/model/note/note_model.dart';

void main() {
  test("Model", () {
    if (kDebugMode) {
      print(const NoteModel() == const NoteModel());
    }
  });
}
