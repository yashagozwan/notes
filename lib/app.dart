import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/application/home/home_bloc.dart';
import 'package:notes/presentation/features/home/home_screen.dart';

class App extends StatelessWidget {
  const App({super.key});

  BlocProvider<T> _provider<T extends Bloc>(T bloc) {
    return BlocProvider(create: (context) => bloc);
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        _provider(HomeBloc()),
      ],
      child: const MaterialApp(
        home: HomeScreen(),
      ),
    );
  }
}
