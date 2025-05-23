import 'package:bnext/feature/shared/data/object/user_profile_object.dart';
import 'package:hive/hive.dart';
import 'dart:convert';

part 'user_object.g.dart';

@HiveType(typeId: 1)
class UserObject {
  @HiveField(0)
  int id;

  @HiveField(1)
  String username;

  @HiveField(2)
  String email;

  @HiveField(3)
  String role;

  UserObject({
    required this.id,
    required this.username,
    required this.email,
    required this.role,
  });

  factory UserObject.fromRawJson(String str) =>
      UserObject.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory UserObject.fromJson(Map<String, dynamic> json) => UserObject(
        id: json["ID"],
        username: json["Username"],
        email: json["email"],
        role: json["role"],
      );

  Map<String, dynamic> toJson() => {
        "ID": id,
        "Username": username,
        "email": email,
        "role": role,
      };
}