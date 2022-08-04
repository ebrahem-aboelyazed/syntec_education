import 'package:freezed_annotation/freezed_annotation.dart';

part 'learning_progress.freezed.dart';

part 'learning_progress.g.dart';

@freezed
class LearningProgress with _$LearningProgress {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory LearningProgress({
    int? id,
    int? courseId,
    @Default('') String teacherName,
    @Default('') String courseTitle,
    @Default(0) double totalTime,
    @Default(0) double elapsedTime,
  }) = _LearningProgress;

  factory LearningProgress.fromJson(Map<String, dynamic> json) =>
      _$$_LearningProgressFromJson(json);
}
