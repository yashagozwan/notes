import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'splash_bloc.freezed.dart';
part 'splash_event.dart';
part 'splash_state.dart';

@injectable
class SplashBloc extends Bloc<SplashEvent, SplashState> {
  SplashBloc() : super(SplashState()) {
    on<_SplashInitial>(_initial);
  }

  void _initial(_SplashInitial event, Emitter<SplashState> emit) {
    emit(state.copyWith(isLoading: true));

    emit(state.copyWith(isLoading: false));
  }
}
