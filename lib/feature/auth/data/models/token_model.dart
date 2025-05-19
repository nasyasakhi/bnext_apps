import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'token_model.freezed.dart';
part 'token_model.g.dart';

@freezed
class TokenModel with _$TokenModel {
    const factory TokenModel({
        @JsonKey(name: "access_token")
        required String accessToken,
        @JsonKey(name: "access_token_expires_at")
        required DateTime accessTokenExpiresAt,
    }) = _TokenModel;

    factory TokenModel.fromJson(Map<String, dynamic> json) => _$TokenModelFromJson(json);
}
