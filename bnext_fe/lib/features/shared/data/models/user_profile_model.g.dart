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
      isActive: json['is_active'] as bool,
      refferal: (json['refferal'] as num).toInt(),
      kodeRefferalUser: json['kode_refferal_user'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      deletedAt: json['deleted_at'],
    );

Map<String, dynamic> _$$UserProfileModelImplToJson(
        _$UserProfileModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'email_alias': instance.emailAlias,
      'phone_number': instance.phoneNumber,
      'is_active': instance.isActive,
      'refferal': instance.refferal,
      'kode_refferal_user': instance.kodeRefferalUser,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
      'deleted_at': instance.deletedAt,
    };
