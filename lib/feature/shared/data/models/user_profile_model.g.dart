// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_profile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserProfileModelImpl _$$UserProfileModelImplFromJson(
        Map<String, dynamic> json) =>
    _$UserProfileModelImpl(
      id: (json['id'] as num).toInt(),
      email: json['email'] as String,
      emailAlias: json['email_alias'] as String,
      phoneNumber: json['phone_number'] as String,
    );

Map<String, dynamic> _$$UserProfileModelImplToJson(
        _$UserProfileModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'email_alias': instance.emailAlias,
      'phone_number': instance.phoneNumber,
    };
