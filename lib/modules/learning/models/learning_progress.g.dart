// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'learning_progress.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LearningProgress _$$_LearningProgressFromJson(Map<String, dynamic> json) =>
    _$_LearningProgress(
      id: json['id'] as int?,
      courseId: json['course_id'] as int?,
      teacherName: json['teacher_name'] as String? ?? '',
      courseTitle: json['course_title'] as String? ?? '',
      totalTime: (json['total_time'] as num?)?.toDouble() ?? 0,
      elapsedTime: (json['elapsed_time'] as num?)?.toDouble() ?? 0,
    );

Map<String, dynamic> _$$_LearningProgressToJson(_$_LearningProgress instance) =>
    <String, dynamic>{
      'id': instance.id,
      'course_id': instance.courseId,
      'teacher_name': instance.teacherName,
      'course_title': instance.courseTitle,
      'total_time': instance.totalTime,
      'elapsed_time': instance.elapsedTime,
    };
