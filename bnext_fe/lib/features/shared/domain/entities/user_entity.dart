import 'package:bnext/feature/shared/domain/entities/user_profile_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'user_entity.freezed.dart';

@freezed
class UserEntity with _$UserEntity {
  const factory UserEntity({
    required int id,
    required String username,
    required String password,
    required int userProfileId,
     UserProfileEntity? userProfile,
  }) = _UserEntity;
}
