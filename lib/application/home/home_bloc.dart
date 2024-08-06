import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:notes/domain/model/note/note_model.dart';
import 'package:notes/domain/repository/note_repository.dart';

part 'home_bloc.freezed.dart';
part 'home_event.dart';
part 'home_state.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final NoteRepository _noteRepository;

  HomeBloc(
    this._noteRepository,
  ) : super(const HomeState()) {
    on<_HomeInitial>(_initial);
  }

  void _initial(_HomeInitial event, Emitter<HomeState> emit) async {
    emit(state.copyWith(isNotesLoading: true));
    await Future.delayed(const Duration(milliseconds: 4000));
    emit(state.copyWith(notes: await _noteRepository.getNotes()));
    emit(state.copyWith(isNotesLoading: false));
  }
}
