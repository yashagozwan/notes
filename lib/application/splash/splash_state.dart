part of 'splash_bloc.dart';

@freezed
class SplashState with _$SplashState {
  factory SplashState({
    @Default(false) bool isLoading,
  }) = _SplashState;
}
