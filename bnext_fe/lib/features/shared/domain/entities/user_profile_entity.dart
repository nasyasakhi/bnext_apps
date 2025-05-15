import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'user_profile_entity.freezed.dart';

@freezed
class UserProfileEntity with _$UserProfileEntity {
  const factory UserProfileEntity({
    required int id,
    required String email,
    required String emailAlias,
    required String phoneNumber,
    required bool isActive,
    required int refferal,
    required String kodeRefferalUser,
    required DateTime createdAt,
    required DateTime updatedAt,
    required dynamic deletedAt,
  }) = _UserProfileEntity;
}
