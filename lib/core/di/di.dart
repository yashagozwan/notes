import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:get_it/get_it.dart';
import 'di.config.dart';

final getIt = GetIt.instance;

@injectableInit
Future<void> configureDependencies() async => getIt.init();

extension GetItUtils on BuildContext {
  T get<T extends Object>() => getIt<T>();
}
