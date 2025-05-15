import '../../domain/entities/entities.dart';
import '../data.dart';

extension UserModelExtension on UserModel {
  UserEntity toEntity() => UserEntity(
      id: id,
      username: username,
      password: password,
      userProfileId: userProfileId,
      userProfile: userProfile?.toEntity());
  UserObject toObject() => toEntity().toObject();
}

extension UserObjectExtension on UserObject {
  UserEntity toEntity() => UserEntity(
      id: id,
      username: username,
      password: password,
      userProfileId: userProfileId,
      userProfile: userProfile?.toEntity());
}

extension UserEntityExtension on UserEntity {
  UserObject toObject() => UserObject(
      id: id,
      username: username,
      password: password,
      userProfileId: userProfileId,
      userProfile: userProfile?.toObject());
}