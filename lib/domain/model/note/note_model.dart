import 'package:freezed_annotation/freezed_annotation.dart';

part 'note_model.freezed.dart';
part 'note_model.g.dart';

@freezed
class NoteModel with _$NoteModel {
  const factory NoteModel({
    @Default('') String title,
    @Default('') String desc,
    @Default('') String category,
    @Default('') String userId,
  }) = _NoteModel;

  factory NoteModel.fromJson(Map<String, dynamic> json) =>
      _$NoteModelFromJson(json);
}
