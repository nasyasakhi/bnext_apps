import 'package:bnext_fe/features/shared/data/object/user_profile_object.dart';
import 'package:hive/hive.dart';
import 'dart:convert';

part 'user_object.g.dart';

@HiveType(typeId: 1)
class UserObject {
  @HiveField(1)
  int id;
  @HiveField(2)
  String username;
  @HiveField(3)
  String password;
  @HiveField(4)
  int userProfileId;
  @HiveField(5)
  UserProfileObject? userProfile;

  UserObject({
    required this.id,
    required this.username,
    required this.password,
    required this.userProfileId,
    this.userProfile,
  });

  factory UserObject.fromRawJson(String str) =>
      UserObject.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory UserObject.fromJson(Map<String, dynamic> json) => UserObject(
        id: json["ID"],
        username: json["Username"],
        password: json["Password"],
        userProfileId: json["UserProfileId"],
        userProfile: UserProfileObject.fromJson(json["UserProfile"]),
      );

  Map<String, dynamic> toJson() => {
        "ID": id,
        "Username": username,
        "Password": password,
        "UserProfileId": userProfileId,
        "UserProfile": userProfile?.toJson(),
      };
}
