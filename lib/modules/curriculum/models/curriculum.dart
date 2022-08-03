import 'package:education/modules/content/content.dart';
import 'package:education/modules/courses/models/section.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'curriculum.freezed.dart';

part 'curriculum.g.dart';

@freezed
class Curriculum with _$Curriculum {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory Curriculum({
    int? id,
    Content? lastContent,
    @Default(<Section>[]) List<Section> sections,
  }) = _Curriculum;

  factory Curriculum.fromJson(Map<String, dynamic> json) =>
      _$$_CurriculumFromJson(json);
}
