import 'package:bnext_fe/features/shared/data/models/user_profile_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    @JsonKey(name: "ID") required int id,
    @JsonKey(name: "Username") required String username,
    @JsonKey(name: "Password") required String password,
    @JsonKey(name: "UserProfileId") required int userProfileId,
    @JsonKey(name: "UserProfile") required UserProfileModel userProfile,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}
