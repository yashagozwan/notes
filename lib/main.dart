import 'package:flutter/material.dart';
import 'package:notes/app.dart';
import 'package:notes/core/di/di.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await configureDependencies();

  runApp(const App());
}
