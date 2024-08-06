import 'package:flutter/material.dart';

extension BuildContextUtils on BuildContext {
  Future<T?> push<T extends Object>(Widget screen) {
    return Navigator.push(
      this,
      MaterialPageRoute(
        builder: (context) => screen,
      ),
    );
  }

  Future<T?> pushAndRemoveUntil<T extends Object>(Widget screen) {
    return Navigator.pushAndRemoveUntil<T>(
      this,
      MaterialPageRoute(
        builder: (context) => screen,
      ),
      (route) => false,
    );
  }

  void pop<T extends Object>({T? data}) {
    Navigator.pop(this, data);
  }
}
