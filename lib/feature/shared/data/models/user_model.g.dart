// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) =>
    _$UserModelImpl(
      id: (json['ID'] as num).toInt(),
      username: json['Username'] as String,
      email: json['email'] as String? ?? '',
      phoneNumber: json['PhoneNumber'] as String?,
      role: json['role'] as String? ?? '',
    );

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      'ID': instance.id,
      'Username': instance.username,
      'email': instance.email,
      'PhoneNumber': instance.phoneNumber,
      'role': instance.role,
    };
