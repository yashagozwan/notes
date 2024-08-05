// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// **************************************************************************
// FloorGenerator
// **************************************************************************

abstract class $AppDatabaseBuilderContract {
  /// Adds migrations to the builder.
  $AppDatabaseBuilderContract addMigrations(List<Migration> migrations);

  /// Adds a database [Callback] to the builder.
  $AppDatabaseBuilderContract addCallback(Callback callback);

  /// Creates the database and initializes it.
  Future<AppDatabase> build();
}

// ignore: avoid_classes_with_only_static_members
class $FloorAppDatabase {
  /// Creates a database builder for a persistent database.
  /// Once a database is built, you should keep a reference to it and re-use it.
  static $AppDatabaseBuilderContract databaseBuilder(String name) =>
      _$AppDatabaseBuilder(name);

  /// Creates a database builder for an in memory database.
  /// Information stored in an in memory database disappears when the process is killed.
  /// Once a database is built, you should keep a reference to it and re-use it.
  static $AppDatabaseBuilderContract inMemoryDatabaseBuilder() =>
      _$AppDatabaseBuilder(null);
}

class _$AppDatabaseBuilder implements $AppDatabaseBuilderContract {
  _$AppDatabaseBuilder(this.name);

  final String? name;

  final List<Migration> _migrations = [];

  Callback? _callback;

  @override
  $AppDatabaseBuilderContract addMigrations(List<Migration> migrations) {
    _migrations.addAll(migrations);
    return this;
  }

  @override
  $AppDatabaseBuilderContract addCallback(Callback callback) {
    _callback = callback;
    return this;
  }

  @override
  Future<AppDatabase> build() async {
    final path = name != null
        ? await sqfliteDatabaseFactory.getDatabasePath(name!)
        : ':memory:';
    final database = _$AppDatabase();
    database.database = await database.open(
      path,
      _migrations,
      _callback,
    );
    return database;
  }
}

class _$AppDatabase extends AppDatabase {
  _$AppDatabase([StreamController<String>? listener]) {
    changeListener = listener ?? StreamController<String>.broadcast();
  }

  UserDAO? _personDAOInstance;

  Future<sqflite.Database> open(
    String path,
    List<Migration> migrations, [
    Callback? callback,
  ]) async {
    final databaseOptions = sqflite.OpenDatabaseOptions(
      version: 1,
      onConfigure: (database) async {
        await database.execute('PRAGMA foreign_keys = ON');
        await callback?.onConfigure?.call(database);
      },
      onOpen: (database) async {
        await callback?.onOpen?.call(database);
      },
      onUpgrade: (database, startVersion, endVersion) async {
        await MigrationAdapter.runMigrations(
            database, startVersion, endVersion, migrations);

        await callback?.onUpgrade?.call(database, startVersion, endVersion);
      },
      onCreate: (database, version) async {
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `users` (`id` INTEGER NOT NULL, `name` TEXT NOT NULL, `avatar` TEXT NOT NULL, `email` TEXT NOT NULL, PRIMARY KEY (`id`))');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `notes` (`id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `title` TEXT NOT NULL, `desc` TEXT NOT NULL, `category` TEXT NOT NULL, `user_id` TEXT NOT NULL, FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE NO ACTION ON DELETE NO ACTION)');

        await callback?.onCreate?.call(database, version);
      },
    );
    return sqfliteDatabaseFactory.openDatabase(path, options: databaseOptions);
  }

  @override
  UserDAO get personDAO {
    return _personDAOInstance ??= _$UserDAO(database, changeListener);
  }
}

class _$UserDAO extends UserDAO {
  _$UserDAO(
    this.database,
    this.changeListener,
  )   : _queryAdapter = QueryAdapter(database),
        _userFloorInsertionAdapter = InsertionAdapter(
            database,
            'users',
            (UserFloor item) => <String, Object?>{
                  'id': item.id,
                  'name': item.name,
                  'avatar': item.avatar,
                  'email': item.email
                }),
        _userFloorUpdateAdapter = UpdateAdapter(
            database,
            'users',
            ['id'],
            (UserFloor item) => <String, Object?>{
                  'id': item.id,
                  'name': item.name,
                  'avatar': item.avatar,
                  'email': item.email
                }),
        _userFloorDeletionAdapter = DeletionAdapter(
            database,
            'users',
            ['id'],
            (UserFloor item) => <String, Object?>{
                  'id': item.id,
                  'name': item.name,
                  'avatar': item.avatar,
                  'email': item.email
                });

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<UserFloor> _userFloorInsertionAdapter;

  final UpdateAdapter<UserFloor> _userFloorUpdateAdapter;

  final DeletionAdapter<UserFloor> _userFloorDeletionAdapter;

  @override
  Future<List<UserFloor>> findAll() async {
    return _queryAdapter.queryList('SELECT * FROM users',
        mapper: (Map<String, Object?> row) => UserFloor(
            id: row['id'] as int,
            name: row['name'] as String,
            avatar: row['avatar'] as String,
            email: row['email'] as String));
  }

  @override
  Future<UserFloor?> findOne(String userId) async {
    return _queryAdapter.query('SELECT * FROM users WHERE id = ?1',
        mapper: (Map<String, Object?> row) => UserFloor(
            id: row['id'] as int,
            name: row['name'] as String,
            avatar: row['avatar'] as String,
            email: row['email'] as String),
        arguments: [userId]);
  }

  @override
  Future<void> deleteAll() async {
    await _queryAdapter.queryNoReturn('DELETE FROM users');
  }

  @override
  Future<void> insertOne(UserFloor user) async {
    await _userFloorInsertionAdapter.insert(user, OnConflictStrategy.abort);
  }

  @override
  Future<void> updateOne(UserFloor user) async {
    await _userFloorUpdateAdapter.update(user, OnConflictStrategy.abort);
  }

  @override
  Future<void> deleteOne(UserFloor user) async {
    await _userFloorDeletionAdapter.delete(user);
  }
}
