// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_credentials.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserCredentials _$UserCredentialsFromJson(Map<String, dynamic> json) {
  return _UserCredentials.fromJson(json);
}

/// @nodoc
mixin _$UserCredentials {
  @HiveField(0)
  String get access => throw _privateConstructorUsedError;
  @HiveField(1)
  String get refresh => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCredentialsCopyWith<UserCredentials> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCredentialsCopyWith<$Res> {
  factory $UserCredentialsCopyWith(
          UserCredentials value, $Res Function(UserCredentials) then) =
      _$UserCredentialsCopyWithImpl<$Res>;
  $Res call({@HiveField(0) String access, @HiveField(1) String refresh});
}

/// @nodoc
class _$UserCredentialsCopyWithImpl<$Res>
    implements $UserCredentialsCopyWith<$Res> {
  _$UserCredentialsCopyWithImpl(this._value, this._then);

  final UserCredentials _value;
  // ignore: unused_field
  final $Res Function(UserCredentials) _then;

  @override
  $Res call({
    Object? access = freezed,
    Object? refresh = freezed,
  }) {
    return _then(_value.copyWith(
      access: access == freezed
          ? _value.access
          : access // ignore: cast_nullable_to_non_nullable
              as String,
      refresh: refresh == freezed
          ? _value.refresh
          : refresh // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_UserCredentialsCopyWith<$Res>
    implements $UserCredentialsCopyWith<$Res> {
  factory _$$_UserCredentialsCopyWith(
          _$_UserCredentials value, $Res Function(_$_UserCredentials) then) =
      __$$_UserCredentialsCopyWithImpl<$Res>;
  @override
  $Res call({@HiveField(0) String access, @HiveField(1) String refresh});
}

/// @nodoc
class __$$_UserCredentialsCopyWithImpl<$Res>
    extends _$UserCredentialsCopyWithImpl<$Res>
    implements _$$_UserCredentialsCopyWith<$Res> {
  __$$_UserCredentialsCopyWithImpl(
      _$_UserCredentials _value, $Res Function(_$_UserCredentials) _then)
      : super(_value, (v) => _then(v as _$_UserCredentials));

  @override
  _$_UserCredentials get _value => super._value as _$_UserCredentials;

  @override
  $Res call({
    Object? access = freezed,
    Object? refresh = freezed,
  }) {
    return _then(_$_UserCredentials(
      access: access == freezed
          ? _value.access
          : access // ignore: cast_nullable_to_non_nullable
              as String,
      refresh: refresh == freezed
          ? _value.refresh
          : refresh // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@HiveType(typeId: 1, adapterName: 'UserCredentialsAdapter')
@JsonSerializable(fieldRename: FieldRename.snake)
class _$_UserCredentials implements _UserCredentials {
  const _$_UserCredentials(
      {@HiveField(0) this.access = '', @HiveField(1) this.refresh = ''});

  factory _$_UserCredentials.fromJson(Map<String, dynamic> json) =>
      _$$_UserCredentialsFromJson(json);

  @override
  @JsonKey()
  @HiveField(0)
  final String access;
  @override
  @JsonKey()
  @HiveField(1)
  final String refresh;

  @override
  String toString() {
    return 'UserCredentials(access: $access, refresh: $refresh)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserCredentials &&
            const DeepCollectionEquality().equals(other.access, access) &&
            const DeepCollectionEquality().equals(other.refresh, refresh));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(access),
      const DeepCollectionEquality().hash(refresh));

  @JsonKey(ignore: true)
  @override
  _$$_UserCredentialsCopyWith<_$_UserCredentials> get copyWith =>
      __$$_UserCredentialsCopyWithImpl<_$_UserCredentials>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserCredentialsToJson(
      this,
    );
  }
}

abstract class _UserCredentials implements UserCredentials {
  const factory _UserCredentials(
      {@HiveField(0) final String access,
      @HiveField(1) final String refresh}) = _$_UserCredentials;

  factory _UserCredentials.fromJson(Map<String, dynamic> json) =
      _$_UserCredentials.fromJson;

  @override
  @HiveField(0)
  String get access;
  @override
  @HiveField(1)
  String get refresh;
  @override
  @JsonKey(ignore: true)
  _$$_UserCredentialsCopyWith<_$_UserCredentials> get copyWith =>
      throw _privateConstructorUsedError;
}
