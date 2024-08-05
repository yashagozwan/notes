// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'note_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NoteModelImpl _$$NoteModelImplFromJson(Map<String, dynamic> json) =>
    _$NoteModelImpl(
      title: json['title'] as String? ?? '',
      desc: json['desc'] as String? ?? '',
      category: json['category'] as String? ?? '',
      userId: json['userId'] as String? ?? '',
    );

Map<String, dynamic> _$$NoteModelImplToJson(_$NoteModelImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'desc': instance.desc,
      'category': instance.category,
      'userId': instance.userId,
    };
