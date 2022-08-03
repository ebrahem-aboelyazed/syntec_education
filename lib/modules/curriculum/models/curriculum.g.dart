// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'curriculum.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Curriculum _$$_CurriculumFromJson(Map<String, dynamic> json) =>
    _$_Curriculum(
      id: json['id'] as int?,
      lastContent: json['last_content'] == null
          ? null
          : Content.fromJson(json['last_content'] as Map<String, dynamic>),
      sections: (json['sections'] as List<dynamic>?)
              ?.map((e) => Section.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <Section>[],
    );

Map<String, dynamic> _$$_CurriculumToJson(_$_Curriculum instance) =>
    <String, dynamic>{
      'id': instance.id,
      'last_content': instance.lastContent?.toJson(),
      'sections': instance.sections.map((e) => e.toJson()).toList(),
    };
