part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    @Default("") String text,
    @Default(false) bool isNotesLoading,
    @Default([]) List<NoteModel> notes,
  }) = _HomeState;
}
