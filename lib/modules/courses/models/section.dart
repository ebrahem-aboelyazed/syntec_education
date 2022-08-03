import 'package:education/modules/content/models/content.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'section.freezed.dart';

part 'section.g.dart';

@freezed
class Section with _$Section {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory Section({
    required int id,
    @Default(0) int parentId,
    @Default(false) bool demo,
    @Default(true) bool isActive,
    @Default('') String title,
    @Default('') String description,
    @Default('') String startDate,
    @Default('') String dueDate,
    @Default('') String endDate,
    @Default('') String imageUrl,
    @Default(<Content>[]) List<Content> contents,
  }) = _Section;

  factory Section.fromJson(Map<String, dynamic> json) =>
      _$$_SectionFromJson(json);
}
