import 'package:floor/floor.dart';
import 'user_floor.dart';

@dao
abstract class UserDAO {
  @Query("SELECT * FROM users")
  Future<List<UserFloor>> findAll();

  @Query("SELECT * FROM users WHERE id = :userId")
  Future<UserFloor?> findOne(String userId);

  @insert
  Future<void> insertOne(UserFloor user);

  @update
  Future<void> updateOne(UserFloor user);

  @delete
  Future<void> deleteOne(UserFloor user);

  @Query("DELETE FROM users")
  Future<void> deleteAll();
}
