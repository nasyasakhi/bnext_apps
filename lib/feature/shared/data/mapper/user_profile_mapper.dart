import '../../domain/entities/entities.dart';
import '../data.dart';

extension UserProfileModelExtension on UserProfileModel {
  UserProfileEntity toEntity() => UserProfileEntity(
      id: id,
      email: email,
      emailAlias: emailAlias,
      phoneNumber: phoneNumber,
      // isActive: isActive,
      // refferal: refferal,
      // kodeRefferalUser: kodeRefferalUser,
      // createdAt: createdAt,
      // updatedAt: updatedAt,
      // deletedAt: deletedAt
      );
  UserProfileObject toObject() => toEntity().toObject();
}

extension UserProfileObjectExtension on UserProfileObject {
  UserProfileEntity toEntity() => UserProfileEntity(
      id: id,
      email: email,
      emailAlias: emailAlias,
      phoneNumber: phoneNumber,
      // isActive: isActive,
      // refferal: refferal,
      // kodeRefferalUser: kodeRefferalUser,
      // createdAt: createdAt,
      // updatedAt: updatedAt,
      // deletedAt: deletedAt
      );
}

extension UserProfileEntityExtension on UserProfileEntity {
  UserProfileObject toObject() => UserProfileObject(
      id: id,
      email: email,
      emailAlias: emailAlias,
      phoneNumber: phoneNumber,
      // isActive: isActive,
      // refferal: refferal,
      // kodeRefferalUser: kodeRefferalUser,
      // createdAt: createdAt,
      // updatedAt: updatedAt,
      // deletedAt: deletedAt
      );
}
