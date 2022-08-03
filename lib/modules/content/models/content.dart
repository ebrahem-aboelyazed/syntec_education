import 'package:freezed_annotation/freezed_annotation.dart';

part 'content.freezed.dart';

part 'content.g.dart';

@freezed
class Content with _$Content {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory Content({
    required int id,
    @Default(false) bool isMandatory,
    @Default('') String requiredTime,
    @Default('') String title,
    @Default('') String description,
    @Default('') String startDate,
    @Default('') String endDate,
    @Default('') String mediaUrl,
    @Default(false) bool demo,
    @Default('') String data,
    @Default(0) int contentType,
  }) = _Content;

  factory Content.fromJson(Map<String, dynamic> json) =>
      _$$_ContentFromJson(json);
}
