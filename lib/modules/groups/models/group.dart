import 'package:freezed_annotation/freezed_annotation.dart';

part 'group.freezed.dart';
part 'group.g.dart';

@freezed
class Group with _$Group {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory Group({
    int? id,
    int? teacherId,
    int? subjectId,
    int? languageId,
    @Default('') String name,
    @Default('') String description,
    @Default('') String startDate,
    @Default('') String dueDate,
    @Default('') String endDate,
    @Default('') String passcode,
  }) = _Group;

  factory Group.fromJson(Map<String, dynamic> json) => _$$_GroupFromJson(json);
}
