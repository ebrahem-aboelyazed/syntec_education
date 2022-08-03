// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'curriculum.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Curriculum _$CurriculumFromJson(Map<String, dynamic> json) {
  return _Curriculum.fromJson(json);
}

/// @nodoc
mixin _$Curriculum {
  int? get id => throw _privateConstructorUsedError;
  Content? get lastContent => throw _privateConstructorUsedError;
  List<Section> get sections => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CurriculumCopyWith<Curriculum> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurriculumCopyWith<$Res> {
  factory $CurriculumCopyWith(
          Curriculum value, $Res Function(Curriculum) then) =
      _$CurriculumCopyWithImpl<$Res>;
  $Res call({int? id, Content? lastContent, List<Section> sections});

  $ContentCopyWith<$Res>? get lastContent;
}

/// @nodoc
class _$CurriculumCopyWithImpl<$Res> implements $CurriculumCopyWith<$Res> {
  _$CurriculumCopyWithImpl(this._value, this._then);

  final Curriculum _value;
  // ignore: unused_field
  final $Res Function(Curriculum) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? lastContent = freezed,
    Object? sections = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      lastContent: lastContent == freezed
          ? _value.lastContent
          : lastContent // ignore: cast_nullable_to_non_nullable
              as Content?,
      sections: sections == freezed
          ? _value.sections
          : sections // ignore: cast_nullable_to_non_nullable
              as List<Section>,
    ));
  }

  @override
  $ContentCopyWith<$Res>? get lastContent {
    if (_value.lastContent == null) {
      return null;
    }

    return $ContentCopyWith<$Res>(_value.lastContent!, (value) {
      return _then(_value.copyWith(lastContent: value));
    });
  }
}

/// @nodoc
abstract class _$$_CurriculumCopyWith<$Res>
    implements $CurriculumCopyWith<$Res> {
  factory _$$_CurriculumCopyWith(
          _$_Curriculum value, $Res Function(_$_Curriculum) then) =
      __$$_CurriculumCopyWithImpl<$Res>;
  @override
  $Res call({int? id, Content? lastContent, List<Section> sections});

  @override
  $ContentCopyWith<$Res>? get lastContent;
}

/// @nodoc
class __$$_CurriculumCopyWithImpl<$Res> extends _$CurriculumCopyWithImpl<$Res>
    implements _$$_CurriculumCopyWith<$Res> {
  __$$_CurriculumCopyWithImpl(
      _$_Curriculum _value, $Res Function(_$_Curriculum) _then)
      : super(_value, (v) => _then(v as _$_Curriculum));

  @override
  _$_Curriculum get _value => super._value as _$_Curriculum;

  @override
  $Res call({
    Object? id = freezed,
    Object? lastContent = freezed,
    Object? sections = freezed,
  }) {
    return _then(_$_Curriculum(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      lastContent: lastContent == freezed
          ? _value.lastContent
          : lastContent // ignore: cast_nullable_to_non_nullable
              as Content?,
      sections: sections == freezed
          ? _value._sections
          : sections // ignore: cast_nullable_to_non_nullable
              as List<Section>,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$_Curriculum implements _Curriculum {
  const _$_Curriculum(
      {this.id,
      this.lastContent,
      final List<Section> sections = const <Section>[]})
      : _sections = sections;

  factory _$_Curriculum.fromJson(Map<String, dynamic> json) =>
      _$$_CurriculumFromJson(json);

  @override
  final int? id;
  @override
  final Content? lastContent;
  final List<Section> _sections;
  @override
  @JsonKey()
  List<Section> get sections {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sections);
  }

  @override
  String toString() {
    return 'Curriculum(id: $id, lastContent: $lastContent, sections: $sections)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Curriculum &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.lastContent, lastContent) &&
            const DeepCollectionEquality().equals(other._sections, _sections));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(lastContent),
      const DeepCollectionEquality().hash(_sections));

  @JsonKey(ignore: true)
  @override
  _$$_CurriculumCopyWith<_$_Curriculum> get copyWith =>
      __$$_CurriculumCopyWithImpl<_$_Curriculum>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CurriculumToJson(
      this,
    );
  }
}

abstract class _Curriculum implements Curriculum {
  const factory _Curriculum(
      {final int? id,
      final Content? lastContent,
      final List<Section> sections}) = _$_Curriculum;

  factory _Curriculum.fromJson(Map<String, dynamic> json) =
      _$_Curriculum.fromJson;

  @override
  int? get id;
  @override
  Content? get lastContent;
  @override
  List<Section> get sections;
  @override
  @JsonKey(ignore: true)
  _$$_CurriculumCopyWith<_$_Curriculum> get copyWith =>
      throw _privateConstructorUsedError;
}
