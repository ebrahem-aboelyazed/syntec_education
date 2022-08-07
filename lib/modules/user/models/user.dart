import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@Freezed(
  map: FreezedMapOptions(maybeMap: false),
  when: FreezedWhenOptions(maybeWhen: false),
)
class User with _$User {
  @HiveType(typeId: 0)
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory User({
    @HiveField(1) @Default('') String firstName,
    @HiveField(2) @Default('') String lastName,
    @HiveField(3) @Default('') String username,
    @HiveField(4) @Default('') String email,
    @HiveField(5) @Default('') String phoneNumber,
    @HiveField(6) @Default('') String secondPhoneNumber,
    @HiveField(7) @Default('') String birthDate,
    @HiveField(8) @Default('') String country,
    @HiveField(9) @Default('') String city,
    @HiveField(10) @Default('') String? ipAddress,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$$_UserFromJson(json);
}
