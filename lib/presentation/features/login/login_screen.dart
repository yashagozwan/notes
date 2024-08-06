import 'package:flutter/material.dart';
import 'package:notes/core/utils/utils.dart';
import 'package:notes/presentation/features/home/home_screen.dart';

@immutable
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Notes"),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            FilledButton(
              onPressed: () {
                context.pushAndRemoveUntil(const HomeScreen());
              },
              child: const Text("Log In with Google"),
            ),
          ],
        ),
      ),
    );
  }
}
