// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Group _$$_GroupFromJson(Map<String, dynamic> json) => _$_Group(
      id: json['id'] as int?,
      teacherId: json['teacher_id'] as int?,
      subjectId: json['subject_id'] as int?,
      languageId: json['language_id'] as int?,
      name: json['name'] as String? ?? '',
      description: json['description'] as String? ?? '',
      startDate: json['start_date'] as String? ?? '',
      dueDate: json['due_date'] as String? ?? '',
      endDate: json['end_date'] as String? ?? '',
      passcode: json['passcode'] as String? ?? '',
    );

Map<String, dynamic> _$$_GroupToJson(_$_Group instance) => <String, dynamic>{
      'id': instance.id,
      'teacher_id': instance.teacherId,
      'subject_id': instance.subjectId,
      'language_id': instance.languageId,
      'name': instance.name,
      'description': instance.description,
      'start_date': instance.startDate,
      'due_date': instance.dueDate,
      'end_date': instance.endDate,
      'passcode': instance.passcode,
    };
