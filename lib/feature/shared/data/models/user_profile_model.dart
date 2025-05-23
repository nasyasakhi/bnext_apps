import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_profile_model.freezed.dart';
part 'user_profile_model.g.dart';

@freezed
class UserProfileModel with _$UserProfileModel {
  const factory UserProfileModel({
    @JsonKey(name: "id") required int id,
    @JsonKey(name: "email") required String email,
    @JsonKey(name: "email_alias") required String emailAlias,
    @JsonKey(name: "phone_number") required String phoneNumber,

  }) = _UserProfileModel;

  factory UserProfileModel.fromJson(Map<String, dynamic> json) =>
      _$UserProfileModelFromJson(json);
}
