import 'package:bnext/feature/shared/data/mapper/user_profile_mapper.dart';
import 'package:flutter/material.dart';

import '../../domain/entities/entities.dart';
import '../data.dart';

extension UserModelExtension on UserModel {
  UserEntity toEntity() => UserEntity(
      id: id,
      username: AutofillHints.username,
      email: email,
      password: password,
      userProfileId: userProfileId,
      userProfile: userProfile?.toEntity());
  UserObject toObject() => toEntity().toObject();
}

extension UserObjectExtension on UserObject {
  UserEntity toEntity() => UserEntity(
      id: id,
      username: username,
      email: email,
      password: password,
      userProfileId: userProfileId,
      userProfile: userProfile?.toEntity());
}

extension UserEntityExtension on UserEntity {
  UserObject toObject() => UserObject(
      id: id,
      username: username,
      email: email,
      password: password,
      userProfileId: userProfileId,
      userProfile: userProfile?.toObject());
}
