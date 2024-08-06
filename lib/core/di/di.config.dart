// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:notes/application/home/home_bloc.dart' as _i992;
import 'package:notes/application/splash/splash_bloc.dart' as _i117;
import 'package:notes/domain/repository/note_repository.dart' as _i1070;
import 'package:notes/infrastructure/repository/note_repository_impl.dart'
    as _i1061;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i117.SplashBloc>(() => _i117.SplashBloc());
    gh.singleton<_i1070.NoteRepository>(() => _i1061.NoteRepositoryImpl());
    gh.factory<_i992.HomeBloc>(
        () => _i992.HomeBloc(gh<_i1070.NoteRepository>()));
    return this;
  }
}
