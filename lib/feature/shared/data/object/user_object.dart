import 'package:bnext/feature/shared/data/object/user_profile_object.dart';
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
  String email;
  @HiveField(4)
  String password;
  @HiveField(5)
  int userProfileId;
  @HiveField(6)
  UserProfileObject? userProfile;

  UserObject({
    required this.id,
    required this.username,
    required this.email,
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
        email: json["Email"],
        password: json["Password"],
        userProfileId: json["UserProfileId"],
        userProfile: UserProfileObject.fromJson(json["UserProfile"]),
      );

  Map<String, dynamic> toJson() => {
        "ID": id,
        "Username": username,
        "Email": email,
        "Password": password,
        "UserProfileId": userProfileId,
        "UserProfile": userProfile?.toJson(),
      };
}
