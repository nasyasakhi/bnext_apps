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
    @JsonKey(name: "is_active") required bool isActive,
    @JsonKey(name: "refferal") required int refferal,
    @JsonKey(name: "kode_refferal_user") required String kodeRefferalUser,
    @JsonKey(name: "created_at") required DateTime createdAt,
    @JsonKey(name: "updated_at") required DateTime updatedAt,
    @JsonKey(name: "deleted_at") required dynamic deletedAt,
  }) = _UserProfileModel;

  factory UserProfileModel.fromJson(Map<String, dynamic> json) =>
      _$UserProfileModelFromJson(json);
}
