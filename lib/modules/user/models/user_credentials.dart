import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/adapters.dart';

part 'user_credentials.freezed.dart';

part 'user_credentials.g.dart';

@freezed
class UserCredentials with _$UserCredentials {
  @HiveType(typeId: 1, adapterName: 'UserCredentialsAdapter')
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory UserCredentials({
    @HiveField(0) @Default('') String access,
    @HiveField(1) @Default('') String refresh,
  }) = _UserCredentials;

  factory UserCredentials.fromJson(Map<String, dynamic> json) =>
      _$$_UserCredentialsFromJson(json);
}
