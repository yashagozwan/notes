import 'package:floor/floor.dart';
import 'package:notes/infrastructure/source/local/floor/user/user_floor.dart';

@Entity(tableName: 'notes', foreignKeys: [
  ForeignKey(
    childColumns: ['user_id'],
    parentColumns: ['id'],
    entity: UserFloor,
  ),
])
class NoteFloor {
  @PrimaryKey(autoGenerate: true)
  final int id;
  final String title;
  final String desc;
  final String category;
  @ColumnInfo(name: 'user_id')
  final String userId;

  NoteFloor({
    required this.id,
    required this.title,
    required this.desc,
    required this.category,
    required this.userId,
  });
}
