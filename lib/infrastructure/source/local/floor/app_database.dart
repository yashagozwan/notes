import 'package:floor/floor.dart';
import 'dart:async';
import 'package:sqflite/sqflite.dart' as sqflite;

import 'note/note_floor.dart';
import 'user/user_floor.dart';

import 'user/user_dao.dart';

part 'app_database.g.dart';

@Database(version: 1, entities: [UserFloor, NoteFloor])
abstract class AppDatabase extends FloorDatabase {
  UserDAO get personDAO;
}
