// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'content.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Content _$$_ContentFromJson(Map<String, dynamic> json) => _$_Content(
      id: json['id'] as int,
      isMandatory: json['is_mandatory'] as bool? ?? false,
      requiredTime: json['required_time'] as String? ?? '',
      title: json['title'] as String? ?? '',
      description: json['description'] as String? ?? '',
      startDate: json['start_date'] as String? ?? '',
      endDate: json['end_date'] as String? ?? '',
      mediaUrl: json['media_url'] as String? ?? '',
      demo: json['demo'] as bool? ?? false,
      data: json['data'] as String? ?? '',
      contentType: json['content_type'] as int? ?? 0,
    );

Map<String, dynamic> _$$_ContentToJson(_$_Content instance) =>
    <String, dynamic>{
      'id': instance.id,
      'is_mandatory': instance.isMandatory,
      'required_time': instance.requiredTime,
      'title': instance.title,
      'description': instance.description,
      'start_date': instance.startDate,
      'end_date': instance.endDate,
      'media_url': instance.mediaUrl,
      'demo': instance.demo,
      'data': instance.data,
      'content_type': instance.contentType,
    };
