import 'package:freezed_annotation/freezed_annotation.dart';

part 'course.freezed.dart';
part 'course.g.dart';

@freezed
class Course with _$Course {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory Course({
    required int id,
    @Default('') String name,
    @Default('') String summary,
    @Default('') String description,
    @Default('') String image,
    @Default('') String  startDate,
    @Default('') String  endDate,
  }) = _Course;

  factory Course.fromJson(Map<String, dynamic> json) =>
      _$$_CourseFromJson(json);
}
