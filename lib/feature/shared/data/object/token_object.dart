import 'package:hive/hive.dart';
import 'dart:convert';

part 'token_object.g.dart';

@HiveType(typeId: 0)
class TokenObject {
    @HiveField(1)
    String accessToken;
    @HiveField(2)
    DateTime accessTokenExpiresAt;

    TokenObject({
        required this.accessToken,
        required this.accessTokenExpiresAt,
    });

    factory TokenObject.fromRawJson(String str) => TokenObject.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory TokenObject.fromJson(Map<String, dynamic> json) => TokenObject(
        accessToken: json["access_token"],
        accessTokenExpiresAt: DateTime.parse(json["access_token_expires_at"]),
    );

    Map<String, dynamic> toJson() => {
        "access_token": accessToken,
        "access_token_expires_at": accessTokenExpiresAt.toIso8601String(),
    };
}
