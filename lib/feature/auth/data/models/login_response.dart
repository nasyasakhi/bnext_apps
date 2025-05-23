import 'package:bnext/feature/shared/data/models/user_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
// ganti dengan path sesuai struktur proyekmu



part 'login_response.freezed.dart';
part 'login_response.g.dart';

@freezed
class LoginResponse with _$LoginResponse {
  const factory LoginResponse({
    required String message,
    required String token,
    required UserModel user,
  }) = _LoginResponse;

  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);
}