import 'package:json_annotation/json_annotation.dart';

part 'auth.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class LoginModel {
  LoginModel({
    this.username,
    this.password,
  });

  factory LoginModel.fromJson(Map<String, dynamic> json) =>
      _$LoginModelFromJson(json);

  Map<String, dynamic> toJson() => _$LoginModelToJson(this);

  String? username;
  String? password;
}

@JsonSerializable(fieldRename: FieldRename.snake)
class SignUpModel {
  SignUpModel({
    this.firstName,
    this.lastName,
    this.username,
    this.email,
    this.password,
    this.phoneNumber,
    this.secondPhoneNumber,
    this.birthDate,
    this.country,
    this.city,
    this.lastUpdate,
    this.lastLogin,
    this.ipAddress,
    this.type = 1,
  });

  factory SignUpModel.fromJson(Map<String, dynamic> json) =>
      _$SignUpModelFromJson(json);

  Map<String, dynamic> toJson() => _$SignUpModelToJson(this);

  String? firstName;
  String? lastName;
  String? username;
  String? email;
  String? password;
  String? phoneNumber;
  String? secondPhoneNumber;
  String? birthDate;
  String? country;
  String? city;
  String? lastUpdate;
  String? lastLogin;
  String? ipAddress;
  int? type;
}
