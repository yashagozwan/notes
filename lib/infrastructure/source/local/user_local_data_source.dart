import 'dart:async';

import 'package:notes/domain/model/user/user_model.dart';

abstract interface class UserLocalDataSource {
  FutureOr<UserModel?> getUser();

  FutureOr<bool> insertOne(UserModel user);

  FutureOr<bool> destroy();
}
