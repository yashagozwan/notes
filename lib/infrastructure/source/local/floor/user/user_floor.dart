import 'package:floor/floor.dart';

@Entity(tableName: 'users')
class UserFloor {
  @PrimaryKey()
  final int id;
  final String name;
  final String avatar;
  final String email;

  UserFloor({
    required this.id,
    required this.name,
    required this.avatar,
    required this.email,
  });
}
