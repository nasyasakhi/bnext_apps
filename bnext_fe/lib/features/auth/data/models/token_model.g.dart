// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TokenModelImpl _$$TokenModelImplFromJson(Map<String, dynamic> json) =>
    _$TokenModelImpl(
      accessToken: json['access_token'] as String,
      accessTokenExpiresAt:
          DateTime.parse(json['access_token_expires_at'] as String),
    );

Map<String, dynamic> _$$TokenModelImplToJson(_$TokenModelImpl instance) =>
    <String, dynamic>{
      'access_token': instance.accessToken,
      'access_token_expires_at':
          instance.accessTokenExpiresAt.toIso8601String(),
    };
