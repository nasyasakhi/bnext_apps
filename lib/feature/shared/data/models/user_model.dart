import 'package:bnext/feature/shared/data/data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  factory UserModel({
    @JsonKey(name: 'ID') required int id,
    @JsonKey(name: 'Username') required String username,
    @JsonKey(name: 'email', defaultValue: '') required String email,
    @JsonKey(name: 'PhoneNumber') String? phoneNumber,
    @JsonKey(defaultValue: '') required String role,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}
