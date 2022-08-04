// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'learning_progress.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LearningProgress _$LearningProgressFromJson(Map<String, dynamic> json) {
  return _LearningProgress.fromJson(json);
}

/// @nodoc
mixin _$LearningProgress {
  int? get id => throw _privateConstructorUsedError;
  int? get courseId => throw _privateConstructorUsedError;
  String get teacherName => throw _privateConstructorUsedError;
  String get courseTitle => throw _privateConstructorUsedError;
  double get totalTime => throw _privateConstructorUsedError;
  double get elapsedTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LearningProgressCopyWith<LearningProgress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LearningProgressCopyWith<$Res> {
  factory $LearningProgressCopyWith(
          LearningProgress value, $Res Function(LearningProgress) then) =
      _$LearningProgressCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      int? courseId,
      String teacherName,
      String courseTitle,
      double totalTime,
      double elapsedTime});
}

/// @nodoc
class _$LearningProgressCopyWithImpl<$Res>
    implements $LearningProgressCopyWith<$Res> {
  _$LearningProgressCopyWithImpl(this._value, this._then);

  final LearningProgress _value;
  // ignore: unused_field
  final $Res Function(LearningProgress) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? courseId = freezed,
    Object? teacherName = freezed,
    Object? courseTitle = freezed,
    Object? totalTime = freezed,
    Object? elapsedTime = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      courseId: courseId == freezed
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as int?,
      teacherName: teacherName == freezed
          ? _value.teacherName
          : teacherName // ignore: cast_nullable_to_non_nullable
              as String,
      courseTitle: courseTitle == freezed
          ? _value.courseTitle
          : courseTitle // ignore: cast_nullable_to_non_nullable
              as String,
      totalTime: totalTime == freezed
          ? _value.totalTime
          : totalTime // ignore: cast_nullable_to_non_nullable
              as double,
      elapsedTime: elapsedTime == freezed
          ? _value.elapsedTime
          : elapsedTime // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$$_LearningProgressCopyWith<$Res>
    implements $LearningProgressCopyWith<$Res> {
  factory _$$_LearningProgressCopyWith(
          _$_LearningProgress value, $Res Function(_$_LearningProgress) then) =
      __$$_LearningProgressCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      int? courseId,
      String teacherName,
      String courseTitle,
      double totalTime,
      double elapsedTime});
}

/// @nodoc
class __$$_LearningProgressCopyWithImpl<$Res>
    extends _$LearningProgressCopyWithImpl<$Res>
    implements _$$_LearningProgressCopyWith<$Res> {
  __$$_LearningProgressCopyWithImpl(
      _$_LearningProgress _value, $Res Function(_$_LearningProgress) _then)
      : super(_value, (v) => _then(v as _$_LearningProgress));

  @override
  _$_LearningProgress get _value => super._value as _$_LearningProgress;

  @override
  $Res call({
    Object? id = freezed,
    Object? courseId = freezed,
    Object? teacherName = freezed,
    Object? courseTitle = freezed,
    Object? totalTime = freezed,
    Object? elapsedTime = freezed,
  }) {
    return _then(_$_LearningProgress(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      courseId: courseId == freezed
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as int?,
      teacherName: teacherName == freezed
          ? _value.teacherName
          : teacherName // ignore: cast_nullable_to_non_nullable
              as String,
      courseTitle: courseTitle == freezed
          ? _value.courseTitle
          : courseTitle // ignore: cast_nullable_to_non_nullable
              as String,
      totalTime: totalTime == freezed
          ? _value.totalTime
          : totalTime // ignore: cast_nullable_to_non_nullable
              as double,
      elapsedTime: elapsedTime == freezed
          ? _value.elapsedTime
          : elapsedTime // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_LearningProgress implements _LearningProgress {
  const _$_LearningProgress(
      {this.id,
      this.courseId,
      this.teacherName = '',
      this.courseTitle = '',
      this.totalTime = 0,
      this.elapsedTime = 0});

  factory _$_LearningProgress.fromJson(Map<String, dynamic> json) =>
      _$$_LearningProgressFromJson(json);

  @override
  final int? id;
  @override
  final int? courseId;
  @override
  @JsonKey()
  final String teacherName;
  @override
  @JsonKey()
  final String courseTitle;
  @override
  @JsonKey()
  final double totalTime;
  @override
  @JsonKey()
  final double elapsedTime;

  @override
  String toString() {
    return 'LearningProgress(id: $id, courseId: $courseId, teacherName: $teacherName, courseTitle: $courseTitle, totalTime: $totalTime, elapsedTime: $elapsedTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LearningProgress &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.courseId, courseId) &&
            const DeepCollectionEquality()
                .equals(other.teacherName, teacherName) &&
            const DeepCollectionEquality()
                .equals(other.courseTitle, courseTitle) &&
            const DeepCollectionEquality().equals(other.totalTime, totalTime) &&
            const DeepCollectionEquality()
                .equals(other.elapsedTime, elapsedTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(courseId),
      const DeepCollectionEquality().hash(teacherName),
      const DeepCollectionEquality().hash(courseTitle),
      const DeepCollectionEquality().hash(totalTime),
      const DeepCollectionEquality().hash(elapsedTime));

  @JsonKey(ignore: true)
  @override
  _$$_LearningProgressCopyWith<_$_LearningProgress> get copyWith =>
      __$$_LearningProgressCopyWithImpl<_$_LearningProgress>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LearningProgressToJson(
      this,
    );
  }
}

abstract class _LearningProgress implements LearningProgress {
  const factory _LearningProgress(
      {final int? id,
      final int? courseId,
      final String teacherName,
      final String courseTitle,
      final double totalTime,
      final double elapsedTime}) = _$_LearningProgress;

  factory _LearningProgress.fromJson(Map<String, dynamic> json) =
      _$_LearningProgress.fromJson;

  @override
  int? get id;
  @override
  int? get courseId;
  @override
  String get teacherName;
  @override
  String get courseTitle;
  @override
  double get totalTime;
  @override
  double get elapsedTime;
  @override
  @JsonKey(ignore: true)
  _$$_LearningProgressCopyWith<_$_LearningProgress> get copyWith =>
      throw _privateConstructorUsedError;
}
