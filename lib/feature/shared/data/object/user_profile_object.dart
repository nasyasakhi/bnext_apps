import 'package:hive/hive.dart';
import 'dart:convert';

part 'user_profile_object.g.dart';

@HiveType(typeId: 2)
class UserProfileObject {
    @HiveField(1)
    int id;
    @HiveField(2)
    String email;
    @HiveField(3)
    String emailAlias;
    @HiveField(4)
    String phoneNumber;
    @HiveField(5)
    bool isActive;
    @HiveField(6)
    int refferal;
    @HiveField(7)
    String kodeRefferalUser;
    @HiveField(8)
    DateTime createdAt;
    @HiveField(9)
    DateTime updatedAt;
    @HiveField(10)
    dynamic deletedAt;

    UserProfileObject({
        required this.id,
        required this.email,
        required this.emailAlias,
        required this.phoneNumber,
        required this.isActive,
        required this.refferal,
        required this.kodeRefferalUser,
        required this.createdAt,
        required this.updatedAt,
        required this.deletedAt,
    });

    factory UserProfileObject.fromRawJson(String str) => UserProfileObject.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory UserProfileObject.fromJson(Map<String, dynamic> json) => UserProfileObject(
        id: json["id"],
        email: json["email"],
        emailAlias: json["email_alias"],
        phoneNumber: json["phone_number"],
        isActive: json["is_active"],
        refferal: json["refferal"],
        kodeRefferalUser: json["kode_refferal_user"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        deletedAt: json["deleted_at"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "email": email,
        "email_alias": emailAlias,
        "phone_number": phoneNumber,
        "is_active": isActive,
        "refferal": refferal,
        "kode_refferal_user": kodeRefferalUser,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "deleted_at": deletedAt,
    };
}
