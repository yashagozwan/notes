import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/application/splash/splash_bloc.dart';
import 'package:notes/core/utils/utils.dart';
import 'package:notes/presentation/features/login/login_screen.dart';

@immutable
class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<SplashBloc>().add(const SplashEvent.initial());

    return BlocListener<SplashBloc, SplashState>(
      listenWhen: (previous, current) {
        return previous.isLoading != current.isLoading;
      },
      listener: (context, state) {
        if (state.isLoading) {
          Future.delayed(const Duration(milliseconds: 1000), () {
            context.pushAndRemoveUntil(const LoginScreen());
          });
        }
      },
      child: const Scaffold(
        body: Center(
          child: Text("Splash"),
        ),
      ),
    );
  }
}
