import 'package:hive/hive.dart';
import 'dart:convert';

part 'token_object.g.dart';

@HiveType(typeId: 0)
class TokenObject {
  @HiveField(1)
  String token;

  @HiveField(2)
  DateTime? tokenExpiresAt;

  TokenObject({
    required this.token,
    this.tokenExpiresAt,
  });

  factory TokenObject.fromRawJson(String str) =>
      TokenObject.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory TokenObject.fromJson(Map<String, dynamic> json) => TokenObject(
        token: json["token"] ?? json["access_token"] ?? "",
        tokenExpiresAt: json["access_token_expires_at"] == null
            ? null
            : DateTime.parse(json["access_token_expires_at"]),
      );

  Map<String, dynamic> toJson() => {
        "token": token,
        if (tokenExpiresAt != null)
          "access_token_expires_at": tokenExpiresAt!.toIso8601String(),
      };
}
