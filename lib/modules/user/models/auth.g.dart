// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginModel _$LoginModelFromJson(Map<String, dynamic> json) => LoginModel(
      username: json['username'] as String?,
      password: json['password'] as String?,
    );

Map<String, dynamic> _$LoginModelToJson(LoginModel instance) =>
    <String, dynamic>{
      'username': instance.username,
      'password': instance.password,
    };

SignUpModel _$SignUpModelFromJson(Map<String, dynamic> json) => SignUpModel(
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      username: json['username'] as String?,
      email: json['email'] as String?,
      password: json['password'] as String?,
      phoneNumber: json['phone_number'] as String?,
      secondPhoneNumber: json['second_phone_number'] as String?,
      birthDate: json['birth_date'] as String?,
      country: json['country'] as String?,
      city: json['city'] as String?,
      lastUpdate: json['last_update'] as String?,
      lastLogin: json['last_login'] as String?,
      ipAddress: json['ip_address'] as String?,
      type: json['type'] as int? ?? 1,
    );

Map<String, dynamic> _$SignUpModelToJson(SignUpModel instance) =>
    <String, dynamic>{
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'username': instance.username,
      'email': instance.email,
      'password': instance.password,
      'phone_number': instance.phoneNumber,
      'second_phone_number': instance.secondPhoneNumber,
      'birth_date': instance.birthDate,
      'country': instance.country,
      'city': instance.city,
      'last_update': instance.lastUpdate,
      'last_login': instance.lastLogin,
      'ip_address': instance.ipAddress,
      'type': instance.type,
    };
