import 'package:bnext/feature/shared/domain/entities/user_profile_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_entity.freezed.dart';

@freezed
class UserEntity with _$UserEntity {
  const factory UserEntity({
    required int id,
    required String username,
    required String email,
    required String role,
  }) = _UserEntity;
}