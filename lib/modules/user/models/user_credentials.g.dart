// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_credentials.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class UserCredentialsAdapter extends TypeAdapter<_$_UserCredentials> {
  @override
  final int typeId = 1;

  @override
  _$_UserCredentials read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_UserCredentials(
      access: fields[0] as String,
      refresh: fields[1] as String,
    );
  }

  @override
  void write(BinaryWriter writer, _$_UserCredentials obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.access)
      ..writeByte(1)
      ..write(obj.refresh);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserCredentialsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserCredentials _$$_UserCredentialsFromJson(Map<String, dynamic> json) =>
    _$_UserCredentials(
      access: json['access'] as String? ?? '',
      refresh: json['refresh'] as String? ?? '',
    );

Map<String, dynamic> _$$_UserCredentialsToJson(_$_UserCredentials instance) =>
    <String, dynamic>{
      'access': instance.access,
      'refresh': instance.refresh,
    };
