// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return _UserModel.fromJson(json);
}

/// @nodoc
mixin _$UserModel {
  @JsonKey(name: "ID")
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "Username")
  String get username => throw _privateConstructorUsedError;
  @JsonKey(name: "Password")
  String get password => throw _privateConstructorUsedError;
  @JsonKey(name: "UserProfileId")
  int get userProfileId => throw _privateConstructorUsedError;
  @JsonKey(name: "UserProfile")
  UserProfileModel get userProfile => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserModelCopyWith<UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelCopyWith<$Res> {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) then) =
      _$UserModelCopyWithImpl<$Res, UserModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "ID") int id,
      @JsonKey(name: "Username") String username,
      @JsonKey(name: "Password") String password,
      @JsonKey(name: "UserProfileId") int userProfileId,
      @JsonKey(name: "UserProfile") UserProfileModel userProfile});

  $UserProfileModelCopyWith<$Res> get userProfile;
}

/// @nodoc
class _$UserModelCopyWithImpl<$Res, $Val extends UserModel>
    implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? username = null,
    Object? password = null,
    Object? userProfileId = null,
    Object? userProfile = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      userProfileId: null == userProfileId
          ? _value.userProfileId
          : userProfileId // ignore: cast_nullable_to_non_nullable
              as int,
      userProfile: null == userProfile
          ? _value.userProfile
          : userProfile // ignore: cast_nullable_to_non_nullable
              as UserProfileModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserProfileModelCopyWith<$Res> get userProfile {
    return $UserProfileModelCopyWith<$Res>(_value.userProfile, (value) {
      return _then(_value.copyWith(userProfile: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserModelImplCopyWith<$Res>
    implements $UserModelCopyWith<$Res> {
  factory _$$UserModelImplCopyWith(
          _$UserModelImpl value, $Res Function(_$UserModelImpl) then) =
      __$$UserModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "ID") int id,
      @JsonKey(name: "Username") String username,
      @JsonKey(name: "Password") String password,
      @JsonKey(name: "UserProfileId") int userProfileId,
      @JsonKey(name: "UserProfile") UserProfileModel userProfile});

  @override
  $UserProfileModelCopyWith<$Res> get userProfile;
}

/// @nodoc
class __$$UserModelImplCopyWithImpl<$Res>
    extends _$UserModelCopyWithImpl<$Res, _$UserModelImpl>
    implements _$$UserModelImplCopyWith<$Res> {
  __$$UserModelImplCopyWithImpl(
      _$UserModelImpl _value, $Res Function(_$UserModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? username = null,
    Object? password = null,
    Object? userProfileId = null,
    Object? userProfile = null,
  }) {
    return _then(_$UserModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      userProfileId: null == userProfileId
          ? _value.userProfileId
          : userProfileId // ignore: cast_nullable_to_non_nullable
              as int,
      userProfile: null == userProfile
          ? _value.userProfile
          : userProfile // ignore: cast_nullable_to_non_nullable
              as UserProfileModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserModelImpl implements _UserModel {
  const _$UserModelImpl(
      {@JsonKey(name: "ID") required this.id,
      @JsonKey(name: "Username") required this.username,
      @JsonKey(name: "Password") required this.password,
      @JsonKey(name: "UserProfileId") required this.userProfileId,
      @JsonKey(name: "UserProfile") required this.userProfile});

  factory _$UserModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserModelImplFromJson(json);

  @override
  @JsonKey(name: "ID")
  final int id;
  @override
  @JsonKey(name: "Username")
  final String username;
  @override
  @JsonKey(name: "Password")
  final String password;
  @override
  @JsonKey(name: "UserProfileId")
  final int userProfileId;
  @override
  @JsonKey(name: "UserProfile")
  final UserProfileModel userProfile;

  @override
  String toString() {
    return 'UserModel(id: $id, username: $username, password: $password, userProfileId: $userProfileId, userProfile: $userProfile)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.userProfileId, userProfileId) ||
                other.userProfileId == userProfileId) &&
            (identical(other.userProfile, userProfile) ||
                other.userProfile == userProfile));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, username, password, userProfileId, userProfile);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      __$$UserModelImplCopyWithImpl<_$UserModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserModelImplToJson(
      this,
    );
  }
}

abstract class _UserModel implements UserModel {
  const factory _UserModel(
      {@JsonKey(name: "ID") required final int id,
      @JsonKey(name: "Username") required final String username,
      @JsonKey(name: "Password") required final String password,
      @JsonKey(name: "UserProfileId") required final int userProfileId,
      @JsonKey(name: "UserProfile")
      required final UserProfileModel userProfile}) = _$UserModelImpl;

  factory _UserModel.fromJson(Map<String, dynamic> json) =
      _$UserModelImpl.fromJson;

  @override
  @JsonKey(name: "ID")
  int get id;
  @override
  @JsonKey(name: "Username")
  String get username;
  @override
  @JsonKey(name: "Password")
  String get password;
  @override
  @JsonKey(name: "UserProfileId")
  int get userProfileId;
  @override
  @JsonKey(name: "UserProfile")
  UserProfileModel get userProfile;
  @override
  @JsonKey(ignore: true)
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
