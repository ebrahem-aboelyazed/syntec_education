// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'section.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Section _$$_SectionFromJson(Map<String, dynamic> json) => _$_Section(
      id: json['id'] as int,
      parentId: json['parent_id'] as int? ?? 0,
      demo: json['demo'] as bool? ?? false,
      isActive: json['is_active'] as bool? ?? true,
      title: json['title'] as String? ?? '',
      description: json['description'] as String? ?? '',
      startDate: json['start_date'] as String? ?? '',
      dueDate: json['due_date'] as String? ?? '',
      endDate: json['end_date'] as String? ?? '',
      imageUrl: json['image_url'] as String? ?? '',
      contents: (json['contents'] as List<dynamic>?)
              ?.map((e) => Content.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <Content>[],
    );

Map<String, dynamic> _$$_SectionToJson(_$_Section instance) =>
    <String, dynamic>{
      'id': instance.id,
      'parent_id': instance.parentId,
      'demo': instance.demo,
      'is_active': instance.isActive,
      'title': instance.title,
      'description': instance.description,
      'start_date': instance.startDate,
      'due_date': instance.dueDate,
      'end_date': instance.endDate,
      'image_url': instance.imageUrl,
      'contents': instance.contents.map((e) => e.toJson()).toList(),
    };
