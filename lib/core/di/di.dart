import 'package:injectable/injectable.dart';
import 'package:get_it/get_it.dart';
import 'di.config.dart';

final getIt = GetIt.instance;

@injectableInit
Future<void> configureDependencies() async => getIt.init();
