// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) =>
    _$UserModelImpl(
      id: (json['ID'] as num).toInt(),
      username: json['Username'] as String,
      password: json['Password'] as String,
      userProfileId: (json['UserProfileId'] as num).toInt(),
      userProfile: UserProfileModel.fromJson(
          json['UserProfile'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      'ID': instance.id,
      'Username': instance.username,
      'Password': instance.password,
      'UserProfileId': instance.userProfileId,
      'UserProfile': instance.userProfile,
    };
